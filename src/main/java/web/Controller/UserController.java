package web.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.Dao.*;
import web.Entity.CauTraLoi;
import web.Entity.CauTraLoi_User;
import web.Entity.ChiTietDonHang;
import web.Entity.ChiTietGioHang;
import web.Entity.DonHang;
import web.Entity.Sach;
import web.Entity.Users;

@Controller

public class UserController {
	
	@Autowired
	SessionFactory factory;
	@Autowired
	private AuthorDao authorDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private AccountDao accountDao;
	
	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private ProductDao proDao;
	
	@Autowired
	private QuestionDao quesDao;
	
	@RequestMapping(value = {"userAccount"}, method=RequestMethod.GET)
	public String account(ModelMap model, HttpSession session) {
		Users user = (Users) session.getAttribute("loggedInUser");
		model.addAttribute("categories", categoryDao.getDataCategory());
		model.addAttribute("author", authorDao.getDataAuthor());
		model.addAttribute("account", accountDao.getDataById(user.getMaKH()));
		model.addAttribute("orders", orderDao.getOrderByUser(user.getMaKH()));
		return "users/account";
	}
	
	@RequestMapping(value = {"userAccount"}, method=RequestMethod.POST)
	public String editAccount(ModelMap model, @ModelAttribute("account") Users editUser, HttpSession s) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Users user = (Users) s.getAttribute("loggedInUser");
		try {
			user.setDiaChi(editUser.getDiaChi());
			user.setEmail(editUser.getEmail());
			user.setHoTen(editUser.getHoTen());
			user.setNgaySinh(editUser.getNgaySinh());
			user.setsDT(editUser.getsDT());
			session.update(user);
			t.commit();
			model.addAttribute("messageE","Lưu thành công!");
		}
		catch(Exception ex){
			t.rollback();
			model.addAttribute("messageE","Lưu thất bại! ");
			
		}
		finally {
			session.close();
		}
		model.addAttribute("account", accountDao.getDataById(user.getMaKH()));
		return "users/account";
	}
	
	@RequestMapping(value = "DeleteOrder/{id}")
	public String deleteProduct(HttpServletRequest request, ModelMap model, @PathVariable("id") int id) {
		List<ChiTietDonHang> listChiTiet = orderDao.getDataOrderDetail(id);
		for (int i = 0; i < listChiTiet.size(); i++) {
			ChiTietDonHang tmp = listChiTiet.get(i);
			Sach sach = proDao.getProductByID(tmp.getIdSach());
			sach.setSoLuongTon(sach.getSoLuongTon() + tmp.getSoLuong());
			proDao.updateProduct(sach);
		}
	    boolean make = orderDao.cancelOrder(id);
			
	    if (make == true) { 
	    	model.addAttribute("Success", "Hủy đơn hàng thành công"); 
	    } 
		else { 
			model.addAttribute("Error", "Đã xảy ra lỗi"); }
		return "redirect:/userAccount";
	}
	
	@RequestMapping(value = "comfirmOrder/{id}")
	public String comfirmOrder(HttpServletRequest request, ModelMap model, @PathVariable("id") int id) {
	    boolean make = orderDao.updateOrder(id);
			
	    if (make == true) { 
	    	model.addAttribute("Success", "Đã nhận đơn hàng thành công"); 
	    } 
		else { 
			model.addAttribute("Error", "Đã xảy ra lỗi"); }
		return "redirect:/userAccount";
	}
	
	@RequestMapping(value="resetOrder/{id}")
	public String saveOrder(ModelMap model,@PathVariable("id") int id, HttpSession session) {
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();
		Users user = (Users) session.getAttribute("loggedInUser");
		DonHang order = orderDao.getOrderByID(id);
		List<ChiTietDonHang> list = orderDao.getDataOrderDetail(id);
		try {
			order.setTrangThai(1);
			
			s.update(order);
			t.commit();	
			for (int i = 0; i < list.size(); i++) {
				Sach sach = proDao.getProductByID(list.get(i).getIdSach());
				sach.setSoLuongTon(sach.getSoLuongTon() - list.get(i).getSoLuong());
				proDao.updateProduct(sach);
			}
			model.addAttribute("Success", "Đã đặt đơn hàng thành công"); 
			
		}
		catch (Exception e) {
			model.addAttribute("Error", "Đã xảy ra lỗi"); 
			t.rollback();
		}
		finally {
			s.close();
		}
	    return "redirect:/userAccount";
	}
	
	@RequestMapping(value="reorder/{id}")
	public String reOrder(ModelMap model,@PathVariable("id") int id, HttpSession session) {
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();
		Users user = (Users) session.getAttribute("loggedInUser");
		DonHang orderOld = orderDao.getOrderByID(id);
		DonHang order = new DonHang();
		List<ChiTietDonHang> list = orderDao.getDataOrderDetail(id);
		try {
			order.setNgayDat("" + java.time.LocalDate.now());
			order.setTongTien(orderOld.getTongTien());
			order.setUserId(user.getMaKH());
			order.setTrangThai(1);
			order.setDiaChi(orderOld.getDiaChi());
			order.setSdt(orderOld.getSdt());
			s.save(order);
			t.commit();	
			for (int i = 0; i < list.size(); i++) {
				ChiTietDonHang ctdh = new ChiTietDonHang();
				Sach sach = proDao.getProductByID(list.get(i).getIdSach());
				ctdh.setiDDonHang(orderDao.getDataEndOrder().getIdDonHang());
				ctdh.setIdSach(list.get(i).getIdSach());
				ctdh.setSoLuong(list.get(i).getSoLuong());
				ctdh.setGiaBan(list.get(i).getGiaBan());
				sach.setSoLuongTon(sach.getSoLuongTon() - list.get(i).getSoLuong());
				orderDao.save(ctdh);
				proDao.updateProduct(sach);
			}
			model.addAttribute("Success", "Đã đặt đơn hàng thành công"); 
			
			
		}
		catch (Exception e) {
			model.addAttribute("Error", "Đã xảy ra lỗi"); 
			t.rollback();
		}
		finally {
			s.close();
		}
	    return  "redirect:/userAccount";
	}
	
	
//	@RequestMapping("Change")
//	public String changePass(Model model, HttpSession session, String pass) {
//		Users user = (Users) session.getAttribute("loggedInUser");
//		user.setMatKhau(pass);
//		return "users/account";
//	}
	
	
	@RequestMapping("form")
	public String form(Model model, HttpSession session, String pass) {
		model.addAttribute("question", quesDao.getQuestionAndAnswer());
		List<Integer> listAns = new ArrayList<>();
		model.addAttribute("listAns", listAns);
		return "users/form";
	}
	
	@RequestMapping(value = {"formAns"}, method=RequestMethod.POST)
	public String formSave(Model model, HttpServletRequest request, HttpSession s) {
		Users user = (Users) s.getAttribute("loggedInUser");
		String q1Answer = request.getParameter("source1");
		String q2Answer = request.getParameter("source2");
		String q3Answer = request.getParameter("source3");
		String q4Answer = request.getParameter("source4");
		String q5Answer = request.getParameter("source5");
		String q6Answer = request.getParameter("source6");
		String q7Answer = request.getParameter("source7");
		List<Integer> so = new ArrayList<>();
		 so.add(Integer.valueOf(q1Answer));
		 so.add(Integer.valueOf(q2Answer));
		 so.add(Integer.valueOf(q3Answer));
		 so.add(Integer.valueOf(q4Answer));
		 so.add(Integer.valueOf(q5Answer));
		 so.add(Integer.valueOf(q6Answer));
		 so.add(Integer.valueOf(q7Answer));
		List<CauTraLoi_User> list = new ArrayList<>();
		for(int i = 0; i < 7; i++) {
			CauTraLoi_User tmp = new CauTraLoi_User();
			tmp.setUserId(user.getMaKH());
			tmp.setIdCauTraLoi(so.get(i));
			quesDao.saveAnswer(tmp);
		}
		return "users/form";
	}
	
	
	
	
}

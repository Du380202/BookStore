package web.Controller;

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
import web.Entity.ChiTietDonHang;
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
	    	model.addAttribute("deleteSuccess", "Hủy đơn hàng thành công"); 
	    } 
		else { 
			model.addAttribute("deleteError", "Đã xảy ra lỗi"); }
		return "redirect:/userAccount";
	}
	
//	
//	@RequestMapping("Change")
//	public String changePass(Model model, HttpSession session, String pass) {
//		Users user = (Users) session.getAttribute("loggedInUser");
//		user.setMatKhau(pass);
//		return "users/account";
//	}
//	
	
	
}

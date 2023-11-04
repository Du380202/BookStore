package web.Controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import web.Dao.*;
import web.Entity.CauTraLoi;
import web.Entity.User_CauTraLoi;
import web.Entity.ChiTietDonHang;
import web.Entity.ChiTietGioHang;
import web.Entity.DonHang;
import web.Entity.Sach;
import web.Entity.TheLoai;
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
	
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value = {"userAccount"}, method=RequestMethod.GET)
	public String account(ModelMap model, HttpSession session) {
		Users user = (Users) session.getAttribute("loggedInUser");
		model.addAttribute("categories", categoryDao.getDataCategory());
		model.addAttribute("author", authorDao.getDataAuthor());
		model.addAttribute("account", accountDao.getDataById(user.getMaKH()));
		model.addAttribute("orders", orderDao.getOrderByUser(user.getMaKH()));
		List<Sach> productss = proDao.getDataNew();
        model.addAttribute("productNew", productss);
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
	
	
	@RequestMapping("change")
	public String changePass(Model model, HttpSession session,
			@RequestParam(value="pass1",  required=false) String pass,
			@RequestParam(value="pass2",  required=false) String newpass) {
		Users user = (Users) session.getAttribute("loggedInUser");
		if(BCrypt.checkpw(pass, user.getMatKhau())) {
			String hashedPassword = BCrypt.hashpw(newpass, BCrypt.gensalt());
			user.setMatKhau(hashedPassword);
			userDao.update(user);
			model.addAttribute("Success", "Đổi mật khẩu thành công");
		}
		else {
			model.addAttribute("Error", "Mật khẩu không chính xác");
		}
		user.setMatKhau(pass);
		return "redirect:/userAccount";
	}
	
	
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
		 List<User_CauTraLoi> list = quesDao.getDataUserAnswer(user.getMaKH());
		for(int i = 0; i < 7; i++) {
			if(list.size() == 0) {
				CauTraLoi tmp = quesDao.getDataAnswerById(so.get(i));
				User_CauTraLoi x = new User_CauTraLoi();
				x.setIdCauTraLoi(tmp.getIdCauTraLoi());
				x.setUserId(user.getMaKH());
				x.setStt(tmp.getStt());
				quesDao.saveAnswer(x);
			}
			else {
				for (int j = 0; j < list.size(); j++) {
					quesDao.deleteAnswer(list.get(i));
				}
				CauTraLoi tmp = quesDao.getDataAnswerById(so.get(i));
				User_CauTraLoi x = new User_CauTraLoi();
				x.setIdCauTraLoi(tmp.getIdCauTraLoi());
				x.setUserId(user.getMaKH());
				x.setStt(tmp.getStt());
				quesDao.saveAnswer(x);
			}
		}
		list = quesDao.getDataUserAnswer(user.getMaKH());
		String content = "";
		for (int i = 0; i < list.size(); i++) {
			content += list.get(i).getStt() + " ";
		}
		String fileName = "D:\\\\Web\\\\BookStore\\\\src\\\\main\\\\java\\\\userAnswer.txt";
		String fileName1 = "D:\\\\Web\\\\BookStore\\\\src\\\\main\\\\java\\\\ketQuaDeXuat.txt";
		write(fileName, content);
		// ghi kết quả xuống file trước
		// sau khi chạy Excute đọc kết quả lên rồi hiểu thị kết quả
		try {
            ExcutePyFile.main(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
		String kq = read(fileName1);
		user.setDeXuat(kq);
		userDao.update(user);
		TheLoai tmp = categoryDao.getCategoryByLabel(kq);
		model.addAttribute("recoment", tmp);
		return "users/formSubmit";
	}
	
	public void write(String fileName, String content) {
		 try {
	            FileWriter writer = new FileWriter(fileName, false); // Sử dụng `false` để ghi đè (overwrite) lên tệp
	            writer.write(content);
	            writer.close();
	            System.out.println("Ghi dữ liệu vào tệp sau khi xóa thành công.");
	        } catch (IOException e) {
	            System.err.println("Lỗi khi ghi dữ liệu vào tệp: " + e.getMessage());
	        }
	}
	
	public String read(String fileName) {
		String s = null ;
		try {
            // Tạo đối tượng BufferedReader để đọc tệp
            BufferedReader br = new BufferedReader(new FileReader(fileName));
            String dong ;
            while ((dong = br.readLine()) != null) {
                // Đọc từng dòng trong tệp và xử lý nó tại đây
                s = dong;
            }

            br.close(); // Đóng tệp sau khi đọc xong
        } catch (IOException e) {
            e.printStackTrace();
        }
		return s;
	}
}

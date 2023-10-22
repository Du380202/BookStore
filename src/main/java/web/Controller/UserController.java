package web.Controller;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.Dao.*;
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
	
	
	@RequestMapping(value = {"userAccount"}, method=RequestMethod.GET)
	public String account(ModelMap model, HttpSession session) {
		Users user = (Users) session.getAttribute("loggedInUser");
		model.addAttribute("categories", categoryDao.getDataCategory());
		model.addAttribute("author", authorDao.getDataAuthor());
		model.addAttribute("account", accountDao.getDataById(user.getMaKH()));
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
	
	
	
	
}

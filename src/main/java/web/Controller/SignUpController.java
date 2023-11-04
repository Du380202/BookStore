package web.Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.SpringVersion;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.Entity.*;
import web.Dao.UserDao;
@Controller
public class SignUpController {
	
	@Autowired
	SessionFactory factory;
	@Autowired
	UserDao userDao;
	
	@RequestMapping(value="signup", method = RequestMethod.GET)
	public String signUp(ModelMap model) {
		model.addAttribute("user", new Users());
		return "login/signUp";
	}
	
	@RequestMapping(value="signup", method = RequestMethod.POST)
	public String createAccount(ModelMap model, @ModelAttribute("user") Users user, BindingResult errors) {
		Users userT = userDao.checkUserName(user.getUserName());
		if(userT.getUserName().equals(user.getUserName())) {
			System.out.print(userDao.checkUserName(user.getUserName()));
			model.addAttribute("message", "Tên đăng nhập đã tồn tại");
		}
		else {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
				String hashedPassword = BCrypt.hashpw(user.getMatKhau(), BCrypt.gensalt());
				user.setMatKhau(hashedPassword);
				user.setRoleID(2);
				session.save(user);
				t.commit();
				model.addAttribute("message", "Đăng ký thành công");
			}
			catch (Exception e) {
				t.rollback();
				
			}
			finally {
				session.close();
			}
			
		}
		
		return "login/signUp";
	}
}

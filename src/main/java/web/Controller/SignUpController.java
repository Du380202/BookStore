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
	
	@RequestMapping(value="signup", method = RequestMethod.GET)
	public String signUp(ModelMap model) {
		model.addAttribute("user", new Users());
		return "login/signUp";
	}
	
	@RequestMapping(value="signup", method = RequestMethod.POST)
	public String createAccount(ModelMap model, @ModelAttribute("user") Users user, BindingResult errors) {

		if(user.getUserName().trim().length() == 0) {
			errors.rejectValue("UserName", "user", "Vui lòng nhập tên đăng nhập!");
		}
		
		if(user.getMatKhau().trim().length() == 0) {
			errors.rejectValue("password", "user", "Vui lòng nhập mật khẩu!");
		}
	
		if(errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau đây!");
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
				model.addAttribute("messageT", "Đăng ký thành công");
			}
			catch (Exception e) {
				t.rollback();
				model.addAttribute("message", "Tên đăng nhập đã tồn tại" + e);
			}
			finally {
				session.close();
			}
			
		}
		
		return "login/signUp";
	}
}

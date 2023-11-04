package web.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import web.Entity.Sach;
import web.Entity.Users;
import web.Bean.Mailer;
import web.Dao.UserDao;
import java.security.SecureRandom;
@Controller
public class LoginController {
	@Autowired
	SessionFactory factory;
	
	@Autowired
	private UserDao userDao;
	
	Users UserData;
	@Autowired
//	JavaMailSender mailer;
	private Mailer mailer;
	
	@RequestMapping(value="signin", method = RequestMethod.GET)
    public String showLoginForm(ModelMap model) {
		model.addAttribute("user", new Users());
        return "login/signIn";
	}
	
	@RequestMapping(value="signin", method = RequestMethod.POST) 
	public String processLogin(ModelMap model, @ModelAttribute("user") Users user, HttpServletRequest request) {
		if (userDao.authenticateUser(user.getUserName(), user.getMatKhau())) {
			HttpSession session = request.getSession();
			UserData = userDao.getUserByUserName(user.getUserName());
			if(UserData.getRoleID() == 1) {
				session.setAttribute("loggedInAdmin", UserData);
				return "redirect:/indexAdmin";
			}
			else {
				session.setAttribute("loggedInUser", UserData);
				return "redirect:/home";
			}
		}
		else {
			if (user.getUserName().length() == 0 || user.getMatKhau().length() == 0) {
				
				if(user.getUserName().length() == 0)
					model.addAttribute("messageAccount", "Tài khoản chưa nhập");
				if(user.getMatKhau().length() == 0)
					model.addAttribute("messagePass", "Mật khẩu chưa nhập");
			}
			else {
				if(userDao.authenticateUser(user.getUserName(), user.getMatKhau()) == false) 
					model.addAttribute("messageLogin", "Tài khoản hoặc mật khẩu không chính xác");
			}
			return "login/signIn";
		}
		
	}
	
	public int getUserID() {
		return UserData.getMaKH();
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET) 
	public String logout(HttpServletRequest request, HttpSession session) {
	    session.removeAttribute("loggedInUser");
	    return "redirect:/home";
	}
	
	@RequestMapping(value="resetPassword", method=RequestMethod.GET ) 
	public String reset(ModelMap model) {
		return "login/resetPass";
	}
	
	@RequestMapping(value="resetPassword", method=RequestMethod.POST)
	public String send(ModelMap model,
			@RequestParam(value="email",  required=false) String to,
			@RequestParam(value="firstname" ,  required=false) String name){
		Users user = userDao.checkUserNameEmail(name, to);
		 int passwordLength = 12; // Độ dài của mật khẩu
	     String password = generateRandomPassword(passwordLength);
	     
			boolean check = mailer.send("n20dccn011@student.ptithcm.edu.vn", to, "Reset Password", "Mật khẩu của bạn là: " + password );
			String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
			user.setMatKhau(hashedPassword);
			userDao.update(user);
			if (check == true) {
				model.addAttribute("messageC","Đổi mật khẩu thành công! Kiểm tra email của bạn" );				
			}
			else {
				model.addAttribute("messageC","Đổi mật khẩu thất bại!");
			}
		
		return "login/resetPass";
	}
	
	public static String generateRandomPassword(int length) {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        SecureRandom random = new SecureRandom();
        StringBuilder password = new StringBuilder();

        for (int i = 0; i < length; i++) {
            int randomIndex = random.nextInt(characters.length());
            char randomChar = characters.charAt(randomIndex);
            password.append(randomChar);
        }

        return password.toString();
    }
	
}

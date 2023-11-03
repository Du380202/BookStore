package web.Controller;

import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import web.Dao.*;
import web.Entity.Sach;
import web.Bean.Mailer;

@Controller
public class ContactController {
	@Autowired
	private AuthorDao authorDao;
	
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private ProductDao product;
	@Autowired
	private SessionFactory factory;
	@Autowired
//	JavaMailSender mailer;
	private Mailer mailer;
	
	@Autowired
	ServletContext context;
	
	@RequestMapping(value = "contact" , method=RequestMethod.GET)
	public String contact(ModelMap model) {
		model.addAttribute("categories", categoryDao.getDataCategory());
		model.addAttribute("author", authorDao.getDataAuthor());
		List<Sach> productss = product.getDataNew();
        model.addAttribute("productNew", productss);
		return "users/contact";
	}
	
	@RequestMapping(value="send", method=RequestMethod.POST)
	public String send(ModelMap model,
			@RequestParam(value="userEmail",  required=false) String from,
			@RequestParam(value="userSubject" ,  required=false) String subject,
			@RequestParam(value="userMessage" ,  required=false) String body){
		
		System.out.print(from + "\n" + subject + "\n" + body + "\n");
		try {
			mailer.send(from, "tranvandu3802@gmail.com",subject,body);
			model.addAttribute("messageC","Gửi mail thành công!");
		} catch (Exception e) {
			model.addAttribute("messageC","Gửi mail thất bại!" + e);
		}
		
		return "users/contact";
	}
	
	
}

package web.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import web.Entity.Users;
import web.Entity.*;
import web.Dao.*;

import java.util.List;

@Controller
public class HomeController {
	
	@Autowired
	private ProductDao productDao;
	@Autowired
	private AuthorDao authorDao ;
	
	@Autowired
	private CategoryDao categoryDao ;
	
	
	@RequestMapping(value = {"/", "home"})
	public String index(ModelMap model) {
		List<Sach> products = productDao.getDataProduct();
        model.addAttribute("productNew", products);
        model.addAttribute("author", authorDao.getDataAuthor());
        model.addAttribute("categories", categoryDao.getDataCategory());
		return "users/index";
	}
	
	
}

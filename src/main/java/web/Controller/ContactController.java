package web.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import web.Dao.*;

@Controller
public class ContactController {
	@Autowired
	private AuthorDao authorDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	@RequestMapping(value = {"contact"})
	public String contact(ModelMap model) {
		model.addAttribute("categories", categoryDao.getDataCategory());
		model.addAttribute("author", authorDao.getDataAuthor());
		return "users/contact";
	}
	
	
}

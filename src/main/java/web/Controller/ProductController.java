package web.Controller;

import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import web.Dao.AuthorDao;
import web.Dao.CategoryDao;
import web.Dao.ProductDao;

@Transactional
@Controller
public class ProductController {
	@Autowired
	private ProductDao product;
	
	@Autowired
	private AuthorDao authorDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	@RequestMapping(value="detail")
	public String productDetail(ModelMap model, @RequestParam("id") int id) {
		model.addAttribute("productDetail", product.getProductByID(id));
		return "users/bookDetail";
	}
	
	@RequestMapping(value = {"list"}, method = RequestMethod.GET)
	public String bookList(ModelMap model) {
		model.addAttribute("categories", categoryDao.getDataCategory());
		model.addAttribute("author", authorDao.getDataAuthor());
		return "users/bookList";
	}
	
//	@RequestMapping(value = {"list"}, method = RequestMethod.POST)
//	public String bookList(ModelMap model, @RequestBody Map<String, Double> priceRange) {
//		double minPrice = priceRange.get("minPrice");
//	    double maxPrice = priceRange.get("maxPrice");
//		System.out.print(minPrice + " " + maxPrice);
//		return "users/bookList";
//	}
	
	@RequestMapping(value = {"listLoc"}, method = RequestMethod.POST)
	public ResponseEntity<String> bookList(ModelMap model, @RequestBody Map<String, Double> priceRange) {
	    double minPrice = priceRange.get("minPrice");
	    double maxPrice = priceRange.get("maxPrice");
	    System.out.println(minPrice + " " + maxPrice);

	    // Thực hiện xử lý dữ liệu ở đây

	    return new ResponseEntity<>("Dữ liệu đã được xử lý", HttpStatus.OK);
	}
}

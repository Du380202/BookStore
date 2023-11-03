package web.Controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import web.Dao.AuthorDao;
import web.Dao.CategoryDao;
import web.Dao.ProductDao;
import web.Entity.DanhGia;
import web.Entity.Sach;
import web.Entity.Users;

@Transactional
@Controller
public class ProductController {
	@Autowired
	private ProductDao product;
	
	@Autowired
	private AuthorDao authorDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value="detail")
	public String productDetail(ModelMap model, @RequestParam("id") int id) {
		model.addAttribute("productDetail", product.getProductByID(id));
		model.addAttribute("comments", product.getCommentByProductId(id));
		model.addAttribute("comment", new DanhGia());
		model.addAttribute("categories", categoryDao.getDataCategory());
        model.addAttribute("author", authorDao.getDataAuthor());
        List<Sach> products = product.getDataNew();
        model.addAttribute("productNew", products);
		return "users/bookDetail";
	}

	@RequestMapping(value = {"detail/{id}"}, method=RequestMethod.POST)
	public String editAccount(HttpServletRequest request, ModelMap model, @ModelAttribute("comment") DanhGia danhGia, HttpSession s, @PathVariable("id") int id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Users user = (Users) s.getAttribute("loggedInUser");
		System.out.print(id);
		try {
			danhGia.setUserId(user.getMaKH());
			danhGia.setThoiGian("" + java.time.LocalDate.now());
			danhGia.setIdSach(id);
			session.save(danhGia);
			t.commit();
			model.addAttribute("messageE","Lưu thành công!");
		}
		catch(Exception ex){
			System.out.print(ex);
			t.rollback();
			model.addAttribute("messageE","Lưu thất bại! " + ex);
			
		}
		finally {
			session.close();
		}
		return "redirect:" + request.getHeader("Referer");
	}
	
	@RequestMapping(value = {"list"})
	public String bookList(ModelMap model, @RequestParam(defaultValue = "1") int currentPage, HttpSession s) {
		int pageSize = 9;
	    int startRow = (currentPage - 1) * pageSize;
	    List<Sach> products;
	    int totalPage;
	    products = product.getDataProductpagin(currentPage, pageSize, startRow);
	    int totalProduct = product.getTotalProduct();
	    totalPage = (int) Math.ceil((double) totalProduct / pageSize);
		model.addAttribute("categories", categoryDao.getDataCategory());
		model.addAttribute("author", authorDao.getDataAuthor());
		model.addAttribute("totalPage", totalPage);
	    model.addAttribute("currentPage", currentPage);
	    model.addAttribute("products", products);
	    List<Sach> productss = product.getDataNew();
        model.addAttribute("productNew", productss);
		return "users/bookList";
	}
	
	@RequestMapping(value="listCategory")
	public String productByCategory(ModelMap model, @RequestParam("id") int id, @RequestParam(defaultValue = "1") int currentPage) {
		int pageSize = 9;
	    int startRow = (currentPage - 1) * pageSize;

	    List<Sach> products;
	    int totalPage;
	    products = product.getDataProductByCa(currentPage, pageSize, startRow, id);
	    int totalProduct = product.getTotalProductCategory(id);

	    totalPage = (int) Math.ceil((double) totalProduct / pageSize);
		model.addAttribute("categories", categoryDao.getDataCategory());
		model.addAttribute("author", authorDao.getDataAuthor());
		model.addAttribute("totalPage", totalPage);
	    model.addAttribute("currentPage", currentPage);
	    model.addAttribute("products", products);
	    List<Sach> productss = product.getDataNew();
        model.addAttribute("productNew", productss);
		return "users/bookList";
	}
	
	@RequestMapping(value="listAuthor")
	public String productByAuthor(ModelMap model, @RequestParam("id") int id, @RequestParam(defaultValue = "1") int currentPage) {
		int pageSize = 9;
	    int startRow = (currentPage - 1) * pageSize;

	    List<Sach> products;
	    int totalPage;
	    products = product.getDataProductByAuthor(currentPage, pageSize, startRow, id);
	    int totalProduct = product.getTotalProductAuthor(id);

	    totalPage = (int) Math.ceil((double) totalProduct / pageSize);
		model.addAttribute("categories", categoryDao.getDataCategory());
		model.addAttribute("author", authorDao.getDataAuthor());
		model.addAttribute("totalPage", totalPage);
	    model.addAttribute("currentPage", currentPage);
	    model.addAttribute("products", products);
	    List<Sach> productss = product.getDataNew();
        model.addAttribute("productNew", productss);
		return "users/bookList";
	}
	
}

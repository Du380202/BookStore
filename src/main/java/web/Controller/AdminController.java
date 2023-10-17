package web.Controller;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.Dao.AuthorDao;
import web.Dao.CategoryDao;
import web.Dao.NXBDao;
import web.Dao.ProductDao;
import web.Entity.*;

@Controller
public class AdminController {
	
	@Autowired
	private SessionFactory factory;
	@Autowired
	private ProductDao proDao;
	@Autowired
	private CategoryDao caDao;
	
	@Autowired
	private NXBDao nxbDao;
	
	@Autowired
	private AuthorDao authorDao;
	
	@RequestMapping(value = {"accounts"})
	public String accounts(ModelMap model) {
		
		return "admin/accounts";
	}
	
	@RequestMapping(value = {"AddProduct"}, method=RequestMethod.GET)
	public String addProduct(ModelMap model) {
		model.addAttribute("categories", caDao.getDataCategory());
		model.addAttribute("nxbs", nxbDao.getDataPublisher());
		model.addAttribute("authors", authorDao.getDataAuthor());
		model.addAttribute("sach", new Sach());
		return "admin/addProduct";
	}
	
	@RequestMapping(value = {"AddProduct"}, method=RequestMethod.POST)
	public String addNewProduct(ModelMap model, @ModelAttribute("sach") Sach sach) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				session.save(sach);
				t.commit();
				model.addAttribute("messageAddP", "Thêm sản phẩm thành công");
		}
		catch (Exception e) {
			t.rollback();
			model.addAttribute("messageAddP", "Thêm sản phẩm thất bại");
		}
		finally {
			session.close();
		}
		return "admin/addProduct";
	}
	
	@RequestMapping(value = {"editProduct"})
	public String editProduct(ModelMap model) {
		
		return "admin/editProduct";
	}
	
	@RequestMapping(value = {"indexAdmin"})
	public String indexAdmin(ModelMap model) {
		
		return "admin/index";
	}
	
	@RequestMapping(value = {"authorAdmin"}, method = RequestMethod.GET)
	public String authorAdmin(ModelMap model) {
		model.addAttribute("addAuthor", new TacGia());
		model.addAttribute("authors", authorDao.getDataAuthor());
		return "admin/author";
	}
	
	@RequestMapping(value="AddAuthor", method = RequestMethod.POST)
	public String addNewAuthor(ModelMap model, @ModelAttribute("addAuthor") TacGia tacGia) {
		authorDao.save(tacGia);
		model.addAttribute("authors", authorDao.getDataAuthor());
		return "admin/author";
	}
	
	@RequestMapping(value = {"nxbAdmin"}, method = RequestMethod.GET)
	public String nxbAdmin(ModelMap model) {
		model.addAttribute("addNxb", new NhaXuatBan());
		model.addAttribute("nxbs", nxbDao.getDataPublisher());
		return "admin/nxbAdmin";
	}
	
	
	@RequestMapping(value = {"AddNxb"}, method = RequestMethod.POST)
	public String addNxb(ModelMap model, @ModelAttribute("addNxb") NhaXuatBan nhaXuatBan) {
		nxbDao.save(nhaXuatBan);
		model.addAttribute("nxbs", nxbDao.getDataPublisher());
		return "admin/nxbAdmin";
	}
	
	
	
	@RequestMapping(value = {"productAdmin"}, method = RequestMethod.GET)
	public String productAdmin(ModelMap model) {
		model.addAttribute("products", proDao.getDataProduct());
		model.addAttribute("categories", caDao.getDataCategory());
		model.addAttribute("addCategory", new TheLoai());
		return "admin/products";
	}
	@RequestMapping(value = "AddCategory", method = RequestMethod.POST)
	public String addNewCategory(HttpServletRequest request, ModelMap model, @ModelAttribute("addCategory") TheLoai theLoai) {
	    try {
	        if (theLoai.getTenTheLoai() != null && !theLoai.getTenTheLoai().isEmpty()) {
	            caDao.save(theLoai);
	        } else {
	            model.addAttribute("messageAddP", "Tên thể loại không hợp lệ");
	        }
	    } catch (Exception ex) {
	        model.addAttribute("messageAddP", "Đã xảy ra lỗi khi thêm thể loại");
	    }
	    model.addAttribute("products", proDao.getDataProduct());
	    model.addAttribute("categories", caDao.getDataCategory());
	    return "redirect:/productAdmin";
	}
	
	
	@RequestMapping(value = "DeleteCategory/{id}")
	public String deleteCategory(HttpServletRequest request, ModelMap model, @PathVariable("id") int id) {
	        boolean make = caDao.deleteCategory(id);
			
			 if (make == true) { 
				 model.addAttribute("deleteSuccess", "Xóa thành công"); 
			 } 
			 else { 
				 model.addAttribute("deleteError", "Đã xảy ra lỗi"); }
			 

			 return "redirect:/productAdmin";
	}
	
	@RequestMapping(value = "DeleteProduct/{id}")
	public String deleteProduct(HttpServletRequest request, ModelMap model, @PathVariable("id") int id) {
	        boolean make = proDao.deleteProduct(id);
			
	        if (make == true) { 
				 model.addAttribute("deleteSuccess", "Xóa thành công"); 
			 } 
			 else { 
				 model.addAttribute("deleteError", "Đã xảy ra lỗi"); }

			 return "redirect:/productAdmin";
	}
	
	@RequestMapping(value = "DeleteAuthor/{id}")
	public String deleteAuthor(HttpServletRequest request, ModelMap model, @PathVariable("id") int id) {
	        boolean make = authorDao.deleteAuthor(id);
			
	        if (make == true) { 
				 model.addAttribute("deleteSuccess", "Xóa thành công"); 
			 } 
			 else { 
				 model.addAttribute("deleteError", "Đã xảy ra lỗi"); }

			 return "redirect:/authorAdmin";
	}

	
	@RequestMapping(value = "DeletePublisher/{id}")
	public String deletePublisher(HttpServletRequest request, ModelMap model, @PathVariable("id") int id) {
	        boolean make = nxbDao.deletePublisher(id);
			
	        if (make == true) { 
				 model.addAttribute("deleteSuccess", "Xóa thành công"); 
			 } 
			 else { 
				 model.addAttribute("deleteError", "Đã xảy ra lỗi"); }

			 return "redirect:/nxbAdmin";
	}
	
}

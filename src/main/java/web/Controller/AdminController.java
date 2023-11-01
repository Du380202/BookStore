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
import org.springframework.web.bind.annotation.RequestParam;

import web.Dao.*;
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
	private OrderDao orderDao;
	
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
		System.out.println(sach.getMoTa());
		System.out.println(sach.getTenSach());
		System.out.println(sach.getMaTacGia());
		System.out.println(sach.getSoLuongTon());
		System.out.println(sach.getAnh1());
		System.out.println(sach.getGiaBan());
		try {
				session.save(sach);
				t.commit();
				model.addAttribute("messageAddP", "Thêm sản phẩm thành công");
		}
		catch (Exception e) {
			t.rollback();
			model.addAttribute("messageAddP", "Thêm sản phẩm thất bại" + e);
		}
		finally {
			session.close();
		}
		return "admin/addProduct";
	}
	
	@RequestMapping(value = {"editProduct"})
	public String editProduct(ModelMap model, @RequestParam("id") int id) {
		model.addAttribute("edit", proDao.getProductByID(id));
		model.addAttribute("sach" , new Sach());
		model.addAttribute("categories", caDao.getDataCategory());
		model.addAttribute("nxbs", nxbDao.getDataPublisher());
		model.addAttribute("authors", authorDao.getDataAuthor());
		return "admin/editProduct";
	}
	
	@RequestMapping(value = {"indexAdmin"}, method=RequestMethod.GET)
	public String indexAdmin(ModelMap model) {
		model.addAttribute("orders", orderDao.getDataOrder());
		model.addAttribute("orderDetail", new DonHang());
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
	
	@RequestMapping(value = "indexAdmin", method=RequestMethod.POST)
	public String deliveryProduct(HttpServletRequest request, ModelMap model, @ModelAttribute("orderDetail") DonHang tmp) {
		DonHang tmp1 = orderDao.getOrderByID(tmp.getIdDonHang());
		if (tmp.getNgayGiao() != "") {
			tmp1.setNgayGiao(tmp.getNgayGiao());
			tmp1.setTrangThai(2);
		}
		boolean make = orderDao.update(tmp1);
		if (make == true && tmp.getNgayGiao() != "") { 
			 model.addAttribute("Success", "Vận chuyển đơn hàng thành công!"); 
		 } 
		 else { 
			 model.addAttribute("Error", "Vận chuyển thất bại!!!"); }
		return "redirect:/indexAdmin";
	}
	
}

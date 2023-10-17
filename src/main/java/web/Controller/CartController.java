package web.Controller;

import java.util.HashMap;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import web.Entity.*;
import web.Dao.*;
import web.Dto.CartDto;
import web.Dto.ChiTietGioHangDTO;
@Controller
public class CartController {
	
	@Autowired
	SessionFactory factory;
	
	@Autowired
	private CartDao cartDao; 
	
	@Autowired
	private AuthorDao authorDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private ProductDao productDao;
	
	LoginController user;
	
	@RequestMapping(value= "shopCart")
	public String cart(ModelMap model, HttpSession session) {
		Users user = (Users) session.getAttribute("loggedInUser");
		model.addAttribute("categories", categoryDao.getDataCategory());
		model.addAttribute("author", authorDao.getDataAuthor());
		model.addAttribute("cartView", cartDao.getCartByUser(user.getMaKH()));
		return "users/shopCart";
	}
	
	@RequestMapping (value="AddCart/{id}")
	public String addCart(HttpServletRequest request ,HttpSession session, @PathVariable int id) {
		
		Users user = (Users) session.getAttribute("loggedInUser");
		@SuppressWarnings("unchecked")
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>)session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, CartDto>();
		}
		String authorName = authorDao.getDataById(productDao.getProductByID(id).getMaTacGia()).getTenTG();
		cart = cartDao.addCart(id, cart, authorName); 
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalPrice", cartDao.totalPrice(cart));
		CartDto product = cart.get(id);
		List<ChiTietGioHangDTO> x = cartDao.getCartByUser(user.getMaKH());
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();
		if(cartDao.getCartByIDSachAndUser(id, user.getMaKH()) == null) {
			try {
				ChiTietGioHang gioHang = new ChiTietGioHang();
				gioHang.setIdSach(id);
				gioHang.setUserId(user.getMaKH());
				gioHang.setSoLuong(product.getQuantity());
				gioHang.setGiaBan(product.getTotalPrice());
				s.save(gioHang);	
				t.commit();
			}
			catch (Exception e) {
				t.rollback();
			}
			finally {
				s.close();
			}
		}
		
		else {
			try {
				ChiTietGioHang gioHang = cartDao.getCartByIDSachAndUser(id, user.getMaKH());
				gioHang.setSoLuong(product.getQuantity());
				gioHang.setGiaBan(product.getTotalPrice());
				s.update(gioHang);	
				t.commit();
			}
			catch (Exception e) {
				t.rollback();
			}
			finally {
				s.close();
			}
		}
		
		return "redirect:" + request.getHeader("Referer");
	}
	
	@RequestMapping (value="/updateCart/{productId}/{quantity}/{total}")
	public String updateCart(HttpServletRequest request ,HttpSession session, 
			@PathVariable int productId, @PathVariable int quantity, @PathVariable double total) {
		
		Users user = (Users) session.getAttribute("loggedInUser");
		@SuppressWarnings("unchecked")
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>)session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, CartDto>();
		}
		String authorName = authorDao.getDataById(productDao.getProductByID(productId).getMaTacGia()).getTenTG();
		cart = cartDao.addCart(productId, cart, authorName); 
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalPrice", cartDao.totalPrice(cart));
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();
		
			try {
				ChiTietGioHang gioHang = cartDao.getCartByIDSachAndUser(productId, user.getMaKH());
				gioHang.setSoLuong(quantity);
				gioHang.setGiaBan(total);
				s.update(gioHang);	
				t.commit();
			}
			catch (Exception e) {
				t.rollback();
			}
			finally {
				s.close();
			}
		
		
		return "redirect:" + request.getHeader("Referer");
	}
	
	@RequestMapping(value="RemoveCart/{id}")
	public String removeCart(HttpServletRequest request ,HttpSession session, @PathVariable int id) {
		
		Users user = (Users) session.getAttribute("loggedInUser");
		@SuppressWarnings("unchecked")
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>)session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, CartDto>();
		}
		cart = cartDao.deleteCart(id, cart); 
		CartDto product = cart.get(id);
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();
		try {
			ChiTietGioHang gioHang = cartDao.getCartByIDSachAndUser(id, user.getMaKH());
			s.delete(gioHang);
			t.commit();
		}
		catch (Exception e) {
			t.rollback();
		}
		finally {
			s.close();
		}
		
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalPrice", cartDao.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}
}

package web.Dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import web.Entity.*;
import web.Dao.*;
import web.Dto.*;


@Transactional
@Repository
public class CartDao {


	@Autowired
	private SessionFactory factory;
	
	@Autowired
	private ProductDao proDao;
	
	@Autowired
	private AuthorDao author;
	
	public ChiTietGioHang getCartByIDSachAndUser(int id, int userid) {
		Session s = factory.getCurrentSession();
		String hql = "FROM ChiTietGioHang where IDSach = " + id  + " and UserID = " + userid;
		Query q = s.createQuery(hql);
		ChiTietGioHang user = (ChiTietGioHang) q.uniqueResult();
		return user;
	}
	
	public List<ChiTietGioHangDTO> getCartByUser(int userId) {
	    List<ChiTietGioHangDTO> gioHangList = new ArrayList<>();;
	    List<ChiTietGioHang> ctgh = getDataCartByUserId(userId); 
	    for (int i = 0; i < ctgh.size(); i++) {
	    	ChiTietGioHang tmp = ctgh.get(i);
	    	ChiTietGioHangDTO them = new ChiTietGioHangDTO();
	    	Sach s = proDao.getProductByID(tmp.getIdSach());
	    	TacGia t = author.getDataById(s.getMaTacGia());
	    	them.setIdSach(tmp.getIdSach());
	    	them.setSoLuong(tmp.getSoLuong());
	    	them.setGiaBanSp(tmp.getGiaBan());
	    	them.setImg1(s.getAnh1());
	    	them.setGia(s.getGiaBan());
	    	them.setTenTG(t.getTenTG());
	    	them.setTieuDe(s.getTenSach());
	    	gioHangList.add(them);
	    }
	    
	    return gioHangList;
	}

	
	public List<ChiTietGioHang> getDataCartByUserId(int userId) {
		Session s = factory.getCurrentSession();
		String hql = "FROM ChiTietGioHang where UserID = " + userId ;
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ChiTietGioHang> gioHangList = q.list();
		return gioHangList;
	}
	
	public HashMap<Integer, CartDto> addCart(int id, HashMap<Integer, CartDto> cart, String authorName) {
		CartDto itemCart = new CartDto();
		
		Sach product = proDao.getProductByID(id);
		if (product != null && cart.containsKey(id)) 
		{
			itemCart = cart.get(id);
			itemCart.setQuantity(itemCart.getQuantity()+1);
			itemCart.setTotalPrice(itemCart.getQuantity() * itemCart.getSach().getGiaBan());
			itemCart.setAuthorName(authorName);
		}
		else {
			itemCart.setSach(product);
			itemCart.setQuantity(1);
			itemCart.setTotalPrice(product.getGiaBan());
			itemCart.setAuthorName(authorName);
		}
		cart.put(id, itemCart);
		
		return cart;
	}
	
	public HashMap<Integer, CartDto> editCart(int id, int quanty, HashMap<Integer, CartDto> cart) {
		if (cart == null) {
			return cart;
		}
		CartDto itemCart = new CartDto();
		if (cart.containsKey(id) ) {
			itemCart = cart.get(id);
			itemCart.setQuantity(quanty);
			double totalPrice = quanty* itemCart.getSach().getGiaBan();
			itemCart.setTotalPrice(totalPrice);
			
		}
		cart.put(id, itemCart);
		
		return cart;
	}
	
	public HashMap<Integer, CartDto> deleteCart(int id, HashMap<Integer, CartDto> cart) {
		if (cart == null) {
			return cart;
		}
		if (cart.containsKey(id) ) {
			cart.remove(id);
			
		}
		return cart;
	}
	
	public double totalPrice(HashMap<Integer, CartDto> cart ) {
		double total = 0;
		for(Map.Entry<Integer, CartDto> itemCart : cart.entrySet()) {
			total += itemCart.getValue().getTotalPrice(); 
		}
		
		return total;
	}
}

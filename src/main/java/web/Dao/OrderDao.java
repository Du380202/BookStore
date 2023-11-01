package web.Dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import web.Dto.ChiTietDonHangDto;
import web.Dto.ChiTietGioHangDTO;
import web.Entity.*;

@Transactional
@Repository
public class OrderDao {
	@Autowired
	private SessionFactory factory;
	
	@Autowired
	private ProductDao proDao;
	
	@Autowired
	private AuthorDao author;
	
	public List<DonHang> getDataOrder() {
		Session s = factory.getCurrentSession();
		String hql = "FROM DonHang";
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<DonHang> donHang = q.list();
		return donHang;
	}
	
	public List<ChiTietDonHang> getDataOrderDetail(int id) {
		Session s = factory.getCurrentSession();
		String hql = "FROM ChiTietDonHang where IDDonHang = " + id;
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<ChiTietDonHang> donHang = q.list();
		return donHang;
	}
	
	public List<DonHang> getOrderByUserId(int id) {
		Session s = factory.getCurrentSession();
		String hql = "FROM DonHang where UserID = " + id;
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<DonHang> donHang = q.list();
		return donHang;
	}
	
	public List<ChiTietDonHangDto> getOrderByUser(int userId) {
	    List<ChiTietDonHangDto> donHangList = new ArrayList<>();
	    List<DonHang> donHang = getOrderByUserId(userId);
	    for (int i = 0; i < donHang.size(); i++) {
	    	DonHang tmp = donHang.get(i);
	    	ChiTietDonHangDto add = new ChiTietDonHangDto();
	    	List<ChiTietDonHang> ctdh = getDataOrderDetail(tmp.getIdDonHang());
	    	List<ChiTietGioHangDTO> ct = new ArrayList<>();
	    	for (int j = 0; j < ctdh.size(); j++) {
	    		ChiTietDonHang tmp2 = ctdh.get(j);
	    		ChiTietGioHangDTO them = new ChiTietGioHangDTO();
	    		Sach s = proDao.getProductByID(tmp2.getIdSach());
		    	TacGia t = author.getDataById(s.getMaTacGia());
	    		them.setIdSach(tmp2.getIdSach());
		    	them.setSoLuong(tmp2.getSoLuong());
		    	them.setGiaBanSp(tmp2.getGiaBan());
		    	them.setImg1(s.getAnh1());
		    	them.setGia(s.getGiaBan());
		    	them.setTenTG(t.getTenTG());
		    	them.setTieuDe(s.getTenSach());
		    	ct.add(them);
	    	}
	    	add.setIdDonHang(tmp.getIdDonHang());
	    	add.setChiTiet(ct);
	    	add.setTongTien(tmp.getTongTien());
	    	add.setStatus(tmp.getTrangThai());
	    	donHangList.add(add);
	    }
	    
	    return donHangList;
	}
	
	public DonHang getDataEndOrder() {
	    Session s = factory.getCurrentSession();
	    String hql = "FROM DonHang ORDER BY IDDonHang DESC";
	    Query q = s.createQuery(hql);
	    q.setMaxResults(1); // Giới hạn kết quả trả về thành 1 dòng
	    DonHang donHang = (DonHang) q.uniqueResult(); // Sử dụng uniqueResult để lấy một dòng duy nhất
	    return donHang;
	}
	
	public DonHang getOrderByID(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM DonHang WHERE IDDonHang = " + id;
		Query query = session.createQuery(hql);
		DonHang donHang = (DonHang) query.uniqueResult();
		return donHang;
	}
	
	public ChiTietDonHang getOrderDetailByID(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM ChiTietDonHang WHERE IDChiTiet = " + id;
		Query query = session.createQuery(hql);
		ChiTietDonHang donHang = (ChiTietDonHang) query.uniqueResult();
		return donHang;
	}
	
	public void save(ChiTietDonHang tacGia) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				session.save(tacGia);
				t.commit();
		}
		catch (Exception e) {
			t.rollback();
		}
		finally {
			session.close();
		}
		
	}
	
	public boolean update(DonHang tacGia) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		boolean check = false;
		try {
				
				session.update(tacGia);
				t.commit();
				check = true;
		}
		catch (Exception e) {
			check = false;
			t.rollback();
		}
		finally {
			session.close();
		}
		return check;
	}
	
	public void deleteOrderDetail(int id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			ChiTietDonHang sach = getOrderDetailByID(id);
			session.delete(sach);
			t.commit();
		
		}
		catch (Exception e) {
		
			t.rollback();
		}
		finally {
			session.close();
		}
		
	}
	
	public boolean cancelOrder(int id) {
		boolean check = false;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
 		try {
				DonHang donHang = getOrderByID(id);
				donHang.setTrangThai(0);
				session.update(donHang);
				t.commit();
				check = true;
		}
		catch (Exception e) {
			check = false;
			t.rollback();
		}
		finally {
			session.close();
		}
		return check;
		
	}
	
	public boolean updateOrder(int id) {
		boolean check = false;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
 		try {
				DonHang donHang = getOrderByID(id);
				donHang.setTrangThai(3);
				session.update(donHang);
				t.commit();
				check = true;
		}
		catch (Exception e) {
			check = false;
			t.rollback();
		}
		finally {
			session.close();
		}
		return check;
		
	}
}

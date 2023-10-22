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

import web.Dto.ChiTietGioHangDTO;
import web.Dto.DanhGiaDto;
import web.Entity.*;
@Transactional
@Repository
public class ProductDao {
	@Autowired
	private SessionFactory factory;
	
	@Autowired
	private UserDao userDao;
	
	public List<Sach> getDataProduct() {
		Session s = factory.getCurrentSession();
		String hql = "FROM Sach";
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Sach> sach = q.list();
		return sach;
	}
	
	public List<DanhGia> getDataCommentProduct(int id) {
		Session s = factory.getCurrentSession();
		String hql = "FROM DanhGia Where IDSach = " + id;
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<DanhGia> sach = q.list();
		return sach;
	}
	
	public List<DanhGiaDto> getCommentByProductId(int id) {
	    List<DanhGiaDto> commentList = new ArrayList<>();;
	    List<DanhGia> comment = getDataCommentProduct(id); 
	    for (int i = 0; i < comment.size(); i++) {
	    	DanhGia tmp = comment.get(i);
	    	DanhGiaDto them = new DanhGiaDto();
	    	Users user = userDao.getDataUser(tmp.getUserId());
	    	them.setAvatar(user.getAvatar());
	    	them.setUserName(user.getHoTen());
	    	them.setDangGia(tmp.getDanhGiaSP());
	    	them.setNgay(tmp.getThoiGian());
	    	them.setNoiDung(tmp.getNoiDung());
	    	commentList.add(them);
	    }
	    
	    return commentList;
	}
	
	
	public Sach getProductByID(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Sach WHERE IDSach = " + id;
		Query query = session.createQuery(hql);
		Sach product = (Sach) query.uniqueResult();
		return product;
	}
	
	public boolean deleteProduct(int id) {
		boolean check = false;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				Sach sach = getProductByID(id);
				session.delete(sach);
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

	public List<Sach> getDataProductpagin(int currentPage, int pageSize, int startRow) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Sach";
		Query query = session.createQuery(hql);
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
		List<Sach> products = query.list();
		return products;
	}
	
	public int getTotalProduct() {
		Session session = factory.getCurrentSession();
	    String hql = "SELECT COUNT(*) FROM Sach";
	    Query query = session.createQuery(hql);
	    Long count = (Long) query.uniqueResult();
	    return count != null ? count.intValue() : 0;
	}
	
}

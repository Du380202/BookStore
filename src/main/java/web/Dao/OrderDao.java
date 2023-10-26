package web.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import web.Entity.*;

@Transactional
@Repository
public class OrderDao {
	@Autowired
	private SessionFactory factory;
	
	public List<DonHang> getDataOrder() {
		Session s = factory.getCurrentSession();
		String hql = "FROM DonHang";
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<DonHang> donHang = q.list();
		return donHang;
	}
	
	public DonHang getDataEndOrder() {
	    Session s = factory.getCurrentSession();
	    String hql = "FROM DonHang ORDER BY IDDonHang DESC";
	    Query q = s.createQuery(hql);
	    q.setMaxResults(1); // Giới hạn kết quả trả về thành 1 dòng
	    DonHang donHang = (DonHang) q.uniqueResult(); // Sử dụng uniqueResult để lấy một dòng duy nhất
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
}

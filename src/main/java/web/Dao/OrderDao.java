package web.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
}

package web.Dao;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import web.Entity.Sach;
import web.Entity.TheLoai;
@Transactional
@Repository
public class ProductDao {
	@Autowired
	private SessionFactory factory;
	
	public List<Sach> getDataProduct() {
		Session s = factory.getCurrentSession();
		String hql = "FROM Sach";
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Sach> sach = q.list();
		return sach;
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
	
}

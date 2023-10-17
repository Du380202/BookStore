package web.Dao;

import java.util.List;

import javax.transaction.Transactional;
import org.hibernate.Transaction;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import web.Entity.*;

@Transactional
@Repository
public class CategoryDao {
	@Autowired
	private SessionFactory factory;
	
	public List<TheLoai> getDataCategory() {
		Session s = factory.getCurrentSession();
		String hql = "FROM TheLoai";
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<TheLoai> theLoai = q.list();
		return theLoai;
	}
	
	public TheLoai getCategoryByID(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TheLoai WHERE IDTheLoai = " + id;
		Query query = session.createQuery(hql);
		TheLoai product = (TheLoai) query.uniqueResult();
		return product;
	}

	public boolean save(TheLoai theLoai) {
		boolean check = false;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				session.save(theLoai);
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

	public boolean deleteCategory(int id) {
		boolean check = false;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				TheLoai theLoai = getCategoryByID(id);
				session.delete(theLoai);
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

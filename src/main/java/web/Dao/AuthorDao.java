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
public class AuthorDao {
	@Autowired
	private SessionFactory factory;
	public List<TacGia> getDataAuthor() {
		Session s = factory.getCurrentSession();
		String hql = "FROM TacGia";
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<TacGia> tacGia = q.list();
		return tacGia;
	}
	
	public TacGia getDataById(int id) {
		Session s = factory.getCurrentSession();
		String hql = "From TacGia Where IDTacGia = " + id;
		Query q = s.createQuery(hql);
		TacGia tacGia = (TacGia)q.uniqueResult();
		return tacGia;
	}

	public void save(TacGia tacGia) {
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
	
	public boolean deleteAuthor(int id) {
		boolean check = false;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				TacGia author = getDataById(id);
				session.delete(author);
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

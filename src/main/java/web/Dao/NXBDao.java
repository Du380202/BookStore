package web.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import web.Entity.NhaXuatBan;
import web.Entity.Sach;
import web.Entity.TacGia;

@Transactional
@Repository
public class NXBDao {
	@Autowired
	private SessionFactory factory;
	
	public List<NhaXuatBan> getDataPublisher() {
		Session s = factory.getCurrentSession();
		String hql = "FROM NhaXuatBan";
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<NhaXuatBan> tacGia = q.list();
		return tacGia;

	}
	
	public NhaXuatBan getPublisherByID(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM NhaXuatBan WHERE IDNXB = " + id;
		Query query = session.createQuery(hql);
		NhaXuatBan product = (NhaXuatBan) query.uniqueResult();
		return product;
	}

	public void save(NhaXuatBan nhaXuatBan) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				session.save(nhaXuatBan);
				t.commit();
		}
		catch (Exception e) {
			t.rollback();
		}
		finally {
			session.close();
		}
		
	}
	
	public boolean deletePublisher(int id) {
		boolean check = false;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				NhaXuatBan nxb = getPublisherByID(id);
				session.delete(nxb);
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

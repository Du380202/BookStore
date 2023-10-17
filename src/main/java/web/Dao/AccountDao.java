package web.Dao;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import web.Entity.*;

@Transactional
@Repository
public class AccountDao {
	
	@Autowired
	private SessionFactory factory;
	
	public Users getDataById(int id) {
		Session s = factory.getCurrentSession();
		String hql = "From Users Where UserID = " + id;
		Query q = s.createQuery(hql);
		Users user = (Users)q.uniqueResult();
		return user;
	}

}

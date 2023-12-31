package web.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import web.Entity.DonHang;
import web.Entity.Sach;
import web.Entity.Users;

@Transactional
@Repository
public class UserDao {
	@Autowired
	private SessionFactory factory;
	
	public Users getDataUser(int userid) {
		Session s = factory.getCurrentSession();
		String hql = "FROM Users where UserID = " + userid ;
		Query q = s.createQuery(hql);
		Users user = (Users) q.uniqueResult();
		return user;
	}
	
	public Users checkUserName(String userid) {
		Session s = factory.getCurrentSession();
		String hql = "FROM Users where UserName = '" + userid + "'" ;
		Query q = s.createQuery(hql);
		Users user = (Users) q.uniqueResult();
		return user;
	}
	
	public Users checkUserNameEmail(String userid, String email) {
		Session s = factory.getCurrentSession();
		String hql = "FROM Users where UserName = '" + userid + "' and Email = '" + email + "'" ;
		Query q = s.createQuery(hql);
		Users user = (Users) q.uniqueResult();
		return user;
	}
	
	public Users getUserByUserName(String username) {
		Session session = factory.getCurrentSession();
		return (Users) session.createQuery("FROM Users WHERE UserName = :username")
                .setParameter("username", username)
                .uniqueResult();
		
	}
	

	
	public boolean authenticateUser(String username, String password) {
        Users user = getUserByUserName(username);
        if (user != null && BCrypt.checkpw(password, user.getMatKhau())) {
        	return true;
        }
        return false;
    }
	
	public void update(Users tacGia) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				
				session.update(tacGia);
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

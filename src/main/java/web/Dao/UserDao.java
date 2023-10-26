package web.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
}

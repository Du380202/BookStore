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

import web.Dto.QuestionAnswerDto;
import web.Entity.*;

@Transactional
@Repository
public class QuestionDao {
	@Autowired
	private SessionFactory factory;
	
	public List<CauHoi> getDataQuestion() {
		Session s = factory.getCurrentSession();
		String hql = "FROM CauHoi";
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<CauHoi> listQues = q.list();
		return listQues;
	}
	
	public List<CauTraLoi> getDataAnswerByQuestion(int id) {
		Session s = factory.getCurrentSession();
		String hql = "FROM CauTraLoi where IDCauHoi = " + id;
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<CauTraLoi> listAns = q.list();
		return listAns;
	}
	
	public CauTraLoi getDataAnswerById(int id) {
		Session s = factory.getCurrentSession();
		String hql = "FROM CauTraLoi where IDCauTraLoi = " + id;
		Query q = s.createQuery(hql);
		CauTraLoi listAns = (CauTraLoi) q.uniqueResult();
		return listAns;
	}
	public List<QuestionAnswerDto> getQuestionAndAnswer() {
		List<QuestionAnswerDto> listQA = new ArrayList<>();
		
		List<CauHoi> listQu = getDataQuestion();
		for (int i = 0; i < listQu.size(); i++) {
			CauHoi tmp = listQu.get(i);
			List<CauTraLoi> listAns = getDataAnswerByQuestion(tmp.getIdCauHoi());
			QuestionAnswerDto them = new QuestionAnswerDto();
			them.setAnswer(listAns);
			them.setId(tmp.getIdCauHoi());
			them.setCauhoi(tmp.getCauHoi());
			listQA.add(them);
		}
		return listQA;
	}
	
	public List<User_CauTraLoi> getDataUserAnswer(int id) {
		Session s = factory.getCurrentSession();
		String hql = "FROM User_CauTraLoi where UserID = " + id;
		Query q = s.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User_CauTraLoi> listAns = q.list();
		return listAns;
	}
	
	public void saveAnswer(User_CauTraLoi ansUser) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				session.save(ansUser);
				t.commit();
		}
		catch (Exception e) {
			t.rollback();
		}
		finally {
			session.close();
		}
		
	}
	
	public void deleteAnswer(User_CauTraLoi ansUser) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
				session.delete(ansUser);
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

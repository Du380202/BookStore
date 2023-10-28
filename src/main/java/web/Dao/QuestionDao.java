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
	
	public void saveAnswer(CauTraLoi_User ansUser) {
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
}

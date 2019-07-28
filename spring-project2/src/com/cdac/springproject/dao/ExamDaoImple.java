package com.cdac.springproject.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.springproject.dto.ExamMaster;
import com.cdac.springproject.dto.User;

@Repository
public class ExamDaoImple implements ExamDao {

	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	public void save(final ExamMaster exam) {
		hibernateTemplate.execute(new HibernateCallback<List<User>>() {
			public List<User> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(exam);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}
	
	/*this is new part*/
	
	
	public List<ExamMaster> getAllExam() {
		List<ExamMaster> el = hibernateTemplate.execute(new HibernateCallback<List<ExamMaster>>() {
			public List<ExamMaster> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from ExamMaster");
				List<ExamMaster> examList = q.list();
				t.commit();
				session.flush();
				session.close();
				return examList;
			}
		});
		return el;
	}

	@Override
	public void deleteById(String examId) {
		hibernateTemplate.execute(new HibernateCallback<List<ExamMaster>>() {
			public List<ExamMaster> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.delete(new ExamMaster(examId));
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

	@Override
	public void update(ExamMaster exam) {
		// TODO Auto-generated method stub
		
	}
	
	
}

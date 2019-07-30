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

import com.cdac.springproject.dto.Diploma;
import com.cdac.springproject.dto.ExamMaster;
import com.cdac.springproject.dto.HSC;
import com.cdac.springproject.dto.SSC;
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

	public void saveHSC(final HSC examhsc) {
		hibernateTemplate.execute(new HibernateCallback<List<User>>() {
			public List<User> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(examhsc);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});

	}

	public void saveDiploma(final Diploma examDiploma) {
		hibernateTemplate.execute(new HibernateCallback<List<User>>() {
			public List<User> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(examDiploma);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});

	}

	public void saveSSC(final SSC examSSC) {
		hibernateTemplate.execute(new HibernateCallback<List<User>>() {
			public List<User> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(examSSC);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});

	}

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

	public List<HSC> getAllExamHSC() {
		List<HSC> el = hibernateTemplate.execute(new HibernateCallback<List<HSC>>() {
			public List<HSC> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from HSC");
				List<HSC> examList = q.list();
				t.commit();
				session.flush();
				session.close();
				return examList;
			}
		});
		return el;
	}

	public List<SSC> getAllExamSSC() {
		List<SSC> el = hibernateTemplate.execute(new HibernateCallback<List<SSC>>() {
			public List<SSC> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from SSC");
				List<SSC> examList = q.list();
				t.commit();
				session.flush();
				session.close();
				return examList;
			}
		});
		return el;
	}

	public List<Diploma> getAllExamDiploma() {
		List<Diploma> el = hibernateTemplate.execute(new HibernateCallback<List<Diploma>>() {
			public List<Diploma> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from Diploma");
				List<Diploma> examList = q.list();
				t.commit();
				session.flush();
				session.close();
				return examList;
			}
		});
		return el;
	}

	@Override
	public void deleteById(int examId) {
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
	public void deleteByIdHSC(int examId) {
		hibernateTemplate.execute(new HibernateCallback<List<HSC>>() {
			public List<HSC> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.delete(new HSC(examId));
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});

	}

	@Override
	public void deleteByIdSSC(int examId) {
		hibernateTemplate.execute(new HibernateCallback<List<SSC>>() {
			public List<SSC> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.delete(new SSC(examId));
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});

	}

	@Override
	public void deleteByIdDiploma(int examId) {
		hibernateTemplate.execute(new HibernateCallback<List<Diploma>>() {
			public List<Diploma> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.delete(new Diploma(examId));
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});

	}

	@Override
	public void update(ExamMaster exam) {

	}

}

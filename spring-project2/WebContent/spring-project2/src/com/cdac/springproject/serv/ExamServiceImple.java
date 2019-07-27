package com.cdac.springproject.serv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.springproject.dao.ExamDao;
import com.cdac.springproject.dto.ExamMaster;
import com.cdac.springproject.dto.User;

@Service
public class ExamServiceImple implements ExamService {

	@Autowired
	private ExamDao examDao;
	
	public void createExam(ExamMaster exam) {
		examDao.save(exam);
	}

	@Override
	public List<ExamMaster> selectAllExam() {
		return examDao.getAllExam();
	}
	
	
	@Override
	public void removeExam(String examId) {
		examDao.deleteById(examId);
		
	}

	@Override
	public void modifyExam(ExamMaster exam) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public ExamMaster checkUser(ExamMaster exam) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
}

	


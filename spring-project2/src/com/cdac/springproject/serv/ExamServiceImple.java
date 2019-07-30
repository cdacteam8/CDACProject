package com.cdac.springproject.serv;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.springproject.dao.ExamDao;
import com.cdac.springproject.dto.Diploma;
import com.cdac.springproject.dto.ExamMaster;
import com.cdac.springproject.dto.HSC;
import com.cdac.springproject.dto.SSC;

@Service
public class ExamServiceImple implements ExamService {

	@Autowired
	private ExamDao examDao;
	
	public void createExam(ExamMaster exam) {
		examDao.save(exam);
	}
	@Override
	public void createExamHSC(HSC examhsc) {
		examDao.saveHSC(examhsc);
		
	}
	@Override
	public void createExamDiploma(Diploma examDiploma) {
		examDao.saveDiploma(examDiploma);
		
	}
	
	@Override
	public void createExamSSC(SSC examSSC) {
		examDao.saveSSC(examSSC);
		
	}

	@Override
	public List<ExamMaster> selectAllExam() {
		return examDao.getAllExam();
	}
	
	@Override
	public List<HSC> selectAllExamHSC() {
		return examDao.getAllExamHSC();
	}
	@Override
	public List<SSC> selectAllExamSSC() {
		return examDao.getAllExamSSC();
	}
	@Override
	public List<Diploma> selectAllExamDiploma() {
		return examDao.getAllExamDiploma();
	}
	
	
	@Override
	public void removeExam(int examId) {
		examDao.deleteById(examId);
		
	}
	
	@Override
	public void removeExamSSC(int examId) {
		examDao.deleteByIdSSC(examId);
		
	}
	
	@Override
	public void removeExamHSC(int examId) {
		examDao.deleteByIdHSC(examId);
		
	}
	
	@Override
	public void removeExamDiploma(int examId) {
		examDao.deleteByIdDiploma(examId);
		
	}

	@Override
	public void modifyExam(ExamMaster exam) {
		
		
	}



	@Override
	public ExamMaster checkUser(ExamMaster exam) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
	
	
	
	
	
	
	
}

	


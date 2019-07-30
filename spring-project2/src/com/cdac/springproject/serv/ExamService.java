package com.cdac.springproject.serv;

import java.util.List;

import com.cdac.springproject.dto.Diploma;
import com.cdac.springproject.dto.ExamMaster;
import com.cdac.springproject.dto.HSC;
import com.cdac.springproject.dto.SSC;


public interface ExamService {
	public void createExam(ExamMaster exam);
	public void createExamHSC(HSC examhsc);
	public void createExamDiploma(Diploma examDiploma);
	public void createExamSSC(SSC examSSC);
	
	public void removeExam(int examId);
	public void removeExamHSC(int examId);
	public void removeExamSSC(int examId);
	public void removeExamDiploma(int examId);
	public void modifyExam(ExamMaster exam);
	public List<ExamMaster> selectAllExam();
	public List<HSC> selectAllExamHSC();
	public List<SSC> selectAllExamSSC();
	public List<Diploma> selectAllExamDiploma();
	public ExamMaster checkUser(ExamMaster exam);

}

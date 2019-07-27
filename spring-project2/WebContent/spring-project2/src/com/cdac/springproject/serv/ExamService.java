package com.cdac.springproject.serv;

import java.util.List;

import com.cdac.springproject.dto.ExamMaster;
import com.cdac.springproject.dto.User;


public interface ExamService {
	public void createExam(ExamMaster exam);

	
	public void removeExam(String examId);
	public void modifyExam(ExamMaster exam);
	public List<ExamMaster> selectAllExam();
	public ExamMaster checkUser(ExamMaster exam);

}

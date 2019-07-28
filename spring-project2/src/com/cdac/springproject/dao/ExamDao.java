package com.cdac.springproject.dao;

import java.util.List;

import com.cdac.springproject.dto.ExamMaster;



public interface ExamDao {
	public void save(ExamMaster exam);
	
	
	//
	public void deleteById(String examId);	
	public void update(ExamMaster exam) ;
	public List<ExamMaster> getAllExam() ;
	/*public ExamMaster validateUser(ExamMaster exam);*/
	
}

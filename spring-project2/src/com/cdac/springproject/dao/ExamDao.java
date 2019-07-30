package com.cdac.springproject.dao;

import java.util.List;

import com.cdac.springproject.dto.Diploma;
import com.cdac.springproject.dto.ExamMaster;
import com.cdac.springproject.dto.HSC;
import com.cdac.springproject.dto.SSC;

public interface ExamDao {
	public void save(ExamMaster exam);

	public void saveHSC(HSC examhsc);

	public void saveDiploma(Diploma examDiploma);

	public void saveSSC(SSC examSSC);

	public void deleteById(int examId);

	public void deleteByIdHSC(int examId);

	public void deleteByIdSSC(int examId);

	public void deleteByIdDiploma(int examId);

	public void update(ExamMaster exam);

	public List<ExamMaster> getAllExam();

	public List<HSC> getAllExamHSC();

	public List<SSC> getAllExamSSC();

	public List<Diploma> getAllExamDiploma();
}

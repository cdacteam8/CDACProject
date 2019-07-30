package com.cdac.springproject.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



@Entity

public class HSC {
	@Id
	@GeneratedValue
	private int examId;

	private String examName;
	
	private String criteria;
	
	private String grade;
	
	private String stream;

	private String vacancy;

	private String post;

	private String date;

	private String links;
	
	private String examDesc;

	public HSC() {
		super();
	}



	public HSC(int examId, String examName, String criteria, String grade, String stream, String vacancy,
			String post, String date, String links, String examDesc) {
		super();
		this.examId = examId;
		this.examName = examName;
		this.criteria = criteria;
		this.grade = grade;
		this.stream = stream;
		this.vacancy = vacancy;
		this.post = post;
		this.date = date;
		this.links = links;
		this.examDesc = examDesc;
	}



	public HSC(int examId) {
		super();
		this.examId = examId;
	}



	

	public int getExamId() {
		return examId;
	}



	public void setExamId(int examId) {
		this.examId = examId;
	}



	public String getExamName() {
		return examName;
	}

	public void setExamName(String examName) {
		this.examName = examName;
	}

	public String getCriteria() {
		return criteria;
	}

	public void setCriteria(String criteria) {
		this.criteria = criteria;
	}
	

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getStream() {
		return stream;
	}

	public void setStream(String stream) {
		this.stream = stream;
	}

	public String getVacancy() {
		return vacancy;
	}

	public void setVacancy(String vacancy) {
		this.vacancy = vacancy;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getLinks() {
		return links;
	}

	public void setLinks(String links) {
		this.links = links;
	}

	public String getExamDesc() {
		return examDesc;
	}

	public void setExamDesc(String examDesc) {
		this.examDesc = examDesc;
	}



	@Override
	public String toString() {
		return "ExamMaster [examId=" + examId + ", examName=" + examName + ", criteria=" + criteria + ", grade=" + grade
				+ ", stream=" + stream + ", vacancy=" + vacancy + ", post=" + post + ", date=" + date + ", links="
				+ links + ", examDesc=" + examDesc + "]";
	}

}

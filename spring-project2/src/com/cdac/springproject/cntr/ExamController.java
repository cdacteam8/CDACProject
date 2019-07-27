package com.cdac.springproject.cntr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.springproject.dto.ExamMaster;
import com.cdac.springproject.dto.User;
import com.cdac.springproject.serv.ExamService;

@Controller
public class ExamController {
	@Autowired
		private ExamService examService;
	
	
	
	@RequestMapping(value ="/exam.htm")
	public String examregister(ExamMaster exam,ModelMap model) {
		examService.createExam(exam);
		model.put("exam", new ExamMaster());
		return "adminDashboard";
	}
	
	/*this is new part*/
	
	@RequestMapping(value = "/exam_list.htm")
	public String examList(ModelMap model) {
		List<ExamMaster> examlist = examService.selectAllExam();
		model.put("el", examlist);
		return "examlist";
	}
	
	//
	@RequestMapping(value = "/delete_exam.htm")
	public String deleteExam(@RequestParam String examId,ModelMap model) {
		examService.removeExam(examId);
		List<ExamMaster> elist = examService.selectAllExam();
		model.put("el", elist);
		return "examlist";
	}
		

}

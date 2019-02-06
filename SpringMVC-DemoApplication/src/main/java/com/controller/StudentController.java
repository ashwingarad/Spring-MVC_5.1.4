package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentController {

	@RequestMapping(value = "studentHome.html", method = RequestMethod.GET)
	public String getHomePage(ModelMap map) {
		map.addAttribute("msg", "Hello Spring Application...!");
		return "StudentForm";
	}
}

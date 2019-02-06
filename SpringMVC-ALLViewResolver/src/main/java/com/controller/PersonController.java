package com.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Person;

@Controller
public class PersonController {

	@GetMapping(value = "phome.html")
	public ModelAndView getHomePage() {
		return new ModelAndView("home", "person", new Person());
	}

	@PostMapping(value = "display.html")
	public String getDisplayPage(ModelMap map, @ModelAttribute(value = "person") @Valid Person person,
			BindingResult result) {

		try {
			if (result.hasErrors()) {
				map.addAttribute("msg", "Something went wrong..");
			} else {
				map.addAttribute("msg", "Hello, " + person.getPname());
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/phome.html";
		}
		return "display";
	}
}

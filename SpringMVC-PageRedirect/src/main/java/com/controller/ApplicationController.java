package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ApplicationController {

	@RequestMapping(value = "home.html")
	public String getHome() {
		return "home";
	}

	@RequestMapping(value = "reg.html")
	public String getRegisterPage() {
		return "register";
	}

	@RequestMapping(value = "gal.html")
	public String getGalleryPage() {
		return "gallery";
	}

	@RequestMapping(value = "contact.html")
	public String contactUsPage() {
		return "aboutus";
	}
}

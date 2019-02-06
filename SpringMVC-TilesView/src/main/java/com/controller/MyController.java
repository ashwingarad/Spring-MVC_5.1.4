package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

	@RequestMapping(value = "home.html")
	public String getHome() {
		return "home.tiles";
	}

	@RequestMapping(value = "reg.html")
	public String getReg() {
		return "reg.tiles";
	}

	@RequestMapping(value = "contact.html")
	public String getContact() {
		return "contact.tiles";
	}

	@RequestMapping(value = "gal.html")
	public String getGallery() {
		return "gal.tiles";
	}
}

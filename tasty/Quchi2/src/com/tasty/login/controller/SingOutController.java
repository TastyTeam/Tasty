package com.tasty.login.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SingOutController {
	@RequestMapping(value = "/SingOut", method = RequestMethod.GET)
	public String SingUp(HttpServletRequest request) {
		request.getSession().setAttribute("uname", null);
		return "redirect:index.jsp";
	}
}

package com.tasty.nagivation.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tasty.entity.Navigation;

@Controller
public class NagivationController {
	@Resource
	public com.tasty.nagivation.service.NagivationService nagivationService ;
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String getNagivation(HttpServletRequest request) {
		List<Navigation> lists=this.nagivationService.list();
		request.getServletContext().setAttribute("lists", lists);
		//request.setAttribute("lists", lists);
		return "index";
	}
}

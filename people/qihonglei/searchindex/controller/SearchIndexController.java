package com.tasty.searchindex.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.entity.Food;
import com.tasty.searchindex.service.SearchIndexService;

@Controller
public class SearchIndexController {
	@Resource
	private SearchIndexService searchIndexService;
	@RequestMapping(value = "/searchindex")
	public String search(HttpServletRequest request) {
		List<Food> foods=searchIndexService.getFood();
		
			request.setAttribute("food", foods);
			return "search";		
		
	}
}

package com.tasty.search.controller;



import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.entity.Food;
import com.tasty.search.service.SearchService;



@Controller
public class SearchController {
	@Resource
	private SearchService searchService;
	@RequestMapping(value = "/search")
	public String search(HttpServletRequest request) {
		String foodName = request.getParameter("foodName");
		List<Food> foods=searchService.getFood(foodName);
		if(foods==null){
			request.setAttribute("error", "您输入的菜名不正确，请重新输入");
			return "search";
		}else {
			request.setAttribute("food", foods);
			return "search1";
		}
		
		
	}
}

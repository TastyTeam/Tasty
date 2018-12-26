package com.tasty.fooddetail.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.fooddetail.service.FoodDetailServiceImpl;

/**
 * @date 2018年12月7日 下午2:03:07 
 * @author 王玉玲
*/
@Controller
public class GreadeController {
	@Resource
	private FoodDetailServiceImpl fooddetailserviceimpl;
	
	@RequestMapping("/grade")
	public String queryRestaurant(HttpServletRequest request) {
	   String arr=request.getParameter("mystargrade");
	   String phone=(String)request.getSession().getAttribute("phone");  
	   String grade=arr.split(";")[0];
	   String foodId=arr.split(";")[1];
	   fooddetailserviceimpl.changeGrade(grade, Integer.parseInt(foodId), phone);
	   return null;
	}
}


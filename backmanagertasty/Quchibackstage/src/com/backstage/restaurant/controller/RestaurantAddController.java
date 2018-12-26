/*package com.backstage.restaurant.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.backstage.entity.Restaurant;
import com.backstage.restaurant.service.RestaurantServiceImpl;

*//**
 * @date 2018年12月25日 下午6:02:42 
 * @author 王玉玲
 * @param 
*//*
@Controller
@RequestMapping("/Restaurant")
public class RestaurantAddController {
	@Resource
	private RestaurantServiceImpl restaurantserviceimpl;
	    @RequestMapping(value="/restaurant", method=RequestMethod.POST)
	public String queryOneRestaurant(HttpServletRequest request) {
		//得到餐厅
		String srestaurant=request.getParameter("srestaurantId");
		List<Restaurant> restaurant=null;
		if(srestaurant==null||srestaurant=="") {	
			restaurant=restaurantserviceimpl.getRestaurantInformation();				
			request.setAttribute("restaurant",restaurant);
			return "Restaurant/index";
		}else{
			//查询操作
			restaurant=restaurantserviceimpl.getOneRestaurantInformation(srestaurant);
			request.setAttribute("restaurant", restaurant);
			return "Restaurant/index";
		}
	}
}
*/
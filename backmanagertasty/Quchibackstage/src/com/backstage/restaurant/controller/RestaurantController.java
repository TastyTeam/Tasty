package com.backstage.restaurant.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.backstage.entity.Restaurant;
import com.backstage.restaurant.service.RestaurantServiceImpl;

/**
 * @date 2018年12月24日 上午11:13:15
 * @author 王玉玲
 * @param
 */
@Controller
@RequestMapping("/Restaurant")
public class RestaurantController {

	@Resource
	private RestaurantServiceImpl restaurantserviceimpl;

	@RequestMapping(value = "/restaurant", method = RequestMethod.POST)
	public String queryOneRestaurant(HttpServletRequest request) {
		// 得到餐厅
		String srestaurant = request.getParameter("srestaurantId");
		List<Restaurant> restaurant = null;
		// 如果首次登陆没有查询
		if (srestaurant == null || srestaurant == "") {
			restaurant = restaurantserviceimpl.getRestaurantInformation();
			request.setAttribute("restaurant", restaurant);
			return "Restaurant/index";
		} else {
			// 查询操作
			restaurant = restaurantserviceimpl.getOneRestaurantInformation(srestaurant);
			request.setAttribute("restaurant", restaurant);
			return "Restaurant/index";
		}
	}

	@RequestMapping(value = "/restaurant", method = RequestMethod.GET)
	public String queryRestaurant(HttpServletRequest request) {
		// 得到电话
		String resaurant = request.getParameter("resaurantId");
		// 对于得到的参数进行判断处理
		if (resaurant != null) {
			// 如果删除请进行删除
			restaurantserviceimpl.dRestaurant(resaurant);
		}
		// 查询操作
		List<Restaurant> restaurant = restaurantserviceimpl.getRestaurantInformation();
		request.setAttribute("restaurant", restaurant);
		return "Restaurant/index";

	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editRestaurant(HttpServletRequest request) {
		// 得到一个餐厅
		String restaurant = request.getParameter("erestaurantId");
		System.out.println(restaurant);
		// 得到id进行查询
		List<Restaurant> restaurantlist= restaurantserviceimpl.getOneRestaurantInformation(restaurant);
		// 对于得到的list餐厅处理
		Restaurant restaurantone=null;
		for (Restaurant rest:restaurantlist) {
			 restaurantone=rest;
		}	
		request.setAttribute("erestaurant", restaurantone);

		return "Restaurant/edit";

	}
	//更新
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveRestaurant(HttpServletRequest request) {
		// 得到餐厅所有信息
	
		String restaurantname = request.getParameter("restaurantname");
		String restauranttime = request.getParameter("restauranttime");
		String restaurantfare = request.getParameter("restaurantfare");
		String restaurantintroduce = request.getParameter("restaurantintroduce");
		String restaurantlawyer = request.getParameter("restaurantlawyer");
		String restaurantfullreduce = request.getParameter("restaurantfullreduce");
		String restaurantfaredetail = request.getParameter("restaurantfaredetail");
		String erestaurantId = request.getParameter("erestaurantId");
		String longitude=request.getParameter("longitude");
		String latitude=request.getParameter("latitude");
		String picture=request.getParameter("picture");
		//更新数据
		 restaurantserviceimpl.updateRestaurantInformation(erestaurantId,restaurantfaredetail,
				 restaurantname,restauranttime,restaurantfare,restaurantintroduce,restaurantlawyer,restaurantfullreduce,longitude, latitude,picture);
		// 对于得到的list餐厅处理
		return "redirect:restaurant";

	}
	//保存
		@RequestMapping(value = "/savereally", method = RequestMethod.POST)
		public String saveNewRestaurant(HttpServletRequest request) {
			// 得到餐厅所有信息
			String restaurantname = request.getParameter("restaurantname");
			String restauranttime = request.getParameter("restauranttime");
			String restaurantfare = request.getParameter("restaurantfare");
			String restaurantintroduce = request.getParameter("restaurantintroduce");
			String restaurantlawyer = request.getParameter("restaurantlawyer");
			String restaurantfullreduce = request.getParameter("restaurantfullreduce");
			String restaurantfaredetail = request.getParameter("restaurantfaredetail");
			String longitude=request.getParameter("longitude");
			String latitude=request.getParameter("latitude");
			//配送时间和配诉费判断
			boolean isNum=restauranttime.matches("[0-9]+");
			boolean isNum2=restaurantfare.matches("[0-9]+");
			if (restauranttime==null||restaurantfare==null||isNum2==false||isNum==false) {
				return "Restaurant/add";
			}
			//更新数据
			 restaurantserviceimpl.saveRestaurantInformation(restaurantfaredetail,
					 restaurantname,restauranttime,restaurantfare,restaurantintroduce,restaurantlawyer,restaurantfullreduce,longitude, latitude);
			// 对于得到的list餐厅处理
			return "redirect:restaurant";

		}

}

package com.backstage.login.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.backstage.entity.Dishes;
import com.backstage.entity.FastFood;
import com.backstage.entity.Restaurant;
import com.backstage.login.service.MapDishesServiceImpl;

/**
 * @date 2018年12月4日 下午5:50:02 
 * @author 王玉玲
*/
@Controller

public class MapDishesController {
	@Resource
	private MapDishesServiceImpl mapdishesserviceimpl;
	@RequestMapping("/mapdishes")
	public String queryRestaurant(@RequestParam("shopId")int shopId,HttpServletRequest request) {
		//查询餐厅的信息
		Restaurant restaurant=mapdishesserviceimpl.queryRestaurant(shopId);
		request.getServletContext().setAttribute("restaurant", restaurant);
		
		//查询菜品的类型
		List <Dishes> dishtypelist=mapdishesserviceimpl.queryDishTypeList();
		request.getServletContext().setAttribute("dishtypelist",dishtypelist);
		System.out.println(dishtypelist.size());
	
	
	   //查询商家的菜
			List <FastFood> fastfood=mapdishesserviceimpl.queryFastFoodList(1);
			request.getServletContext().setAttribute("fastfood",fastfood);
			return "single";
		}
}

package com.tasty.mapdishes.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tasty.entity.Dishes;
import com.tasty.entity.FastFood;
import com.tasty.entity.Restaurant;
import com.tasty.mapdishes.service.MapDishesServiceImpl;

/**
 * @date 2018年12月4日 下午5:50:02 
 * @author 王玉玲
*/
@Controller

public class MapDishesController {
	@Resource
	private MapDishesServiceImpl mapdishesserviceimpl;
	@RequestMapping("/mapdishes")
	public String queryRestaurant(HttpServletRequest request) {
		String shopid=request.getParameter("shopid");
		int shopId=Integer.parseInt(shopid);
		HttpSession session=request.getSession();
		String phone=(String)session.getAttribute("phone");
		System.out.println("phone2"+phone);
		//创建session---董莹
		/*HttpSession session=request.getSession();
		Object obj=session.getAttribute("shopId");
		int shopId1;
		if (obj==null) {
			shopId1=shopId;
		} else {
			shopId1=(Integer)obj;
		}
		session.setAttribute("shopId", shopId1);*/
		/*int shopId=Integer.parseInt(request.getParameter("shopid"));
		*/
		
		//查询餐厅的信息
		Restaurant restaurant=mapdishesserviceimpl.queryRestaurant(shopId);
		request.getServletContext().setAttribute("restaurant", restaurant);
		
		//查询菜品的类型
		List <Dishes> dishtypelist=mapdishesserviceimpl.queryDishTypeList(shopId);
		request.getServletContext().setAttribute("dishtypelist",dishtypelist);
		System.out.println(dishtypelist.size());
		
	  
			return "single";
			
		}
	
}

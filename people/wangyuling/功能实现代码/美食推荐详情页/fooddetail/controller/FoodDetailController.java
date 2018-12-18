package com.tasty.fooddetail.controller;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tasty.entity.Food;
import com.tasty.fooddetail.service.FoodDetailServiceImpl;

/**
 * @date 2018年12月7日 下午2:03:07 
 * @author 王玉玲
*/
@Controller
public class FoodDetailController {

	@Resource
	private FoodDetailServiceImpl fooddetailserviceimpl;
	@RequestMapping("/fooddetail")
	public String queryRestaurant(@RequestParam("foodId")int foodId,HttpServletRequest request) {
		//查询菜品的详情信息
		Food food =fooddetailserviceimpl.queryFood(foodId);
		request.getServletContext().setAttribute("food", food);
		//得到主食并存入application里
    	Map<String, String> foodmain=fooddetailserviceimpl.getFoodMain(foodId);
		request.getServletContext().setAttribute("foodmain", foodmain);
		//得到材料并存入application里
    	Map<String, String> foodingredients=fooddetailserviceimpl.getIngredients(foodId);
		request.getServletContext().setAttribute("foodingredients", foodingredients);
		//得到其他信息并存入application里
    	Map<String, String> foodother=fooddetailserviceimpl.getfoodOther(foodId);
		request.getServletContext().setAttribute("foodother", foodother);
		//得到照片并存入application里
    	List<String> foodImg=fooddetailserviceimpl.getFoodImg(foodId);
		request.getServletContext().setAttribute("foodImg", foodImg);
	    //得到的文字并存入application里
	    List<String> foodstep=fooddetailserviceimpl.getFoodStep(foodId);
	    request.getServletContext().setAttribute("foodstep", foodstep);
	    //得到的类型并存入application里
	    List<String> foodtype=fooddetailserviceimpl.getFoodType(foodId);
	    request.getServletContext().setAttribute("foodtype", foodtype);
	    //得到星级
	    
	   String grade=request.getParameter("stargrade");
	   String phone = null;
	   fooddetailserviceimpl.changeGrade(grade, foodId,phone);
	   System.out.println(request.getRequestURI());
     	return "newcai";
	}
	}	


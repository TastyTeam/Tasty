package com.tasty.fooddetail.controller;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
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
	public String queryRestaurant(@RequestParam("foodId")int foodId,HttpServletRequest request) throws IOException {
		System.out.println(foodId);
		String[] arg = new String[] { "F:\\software\\anaconda\\python", "E:\\大三下\\Tasty\\tasty\\apriori.py", String.valueOf(foodId) };
		Process proc = Runtime.getRuntime().exec(arg);// 执行py文件
		System.out.println(proc+"pro");
		BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream(),"GBK"));
		String line = null;
		System.out.println("line");
		List<Food> foodList=new ArrayList<Food>();
		while ((line = in.readLine()) != null) {
			//返回食品
			System.out.println(line);		
			int foodid=Integer.parseInt(line);
			foodList.add(fooddetailserviceimpl.queryFood(foodid));
			
		}
		request.setAttribute("foodList", foodList);
		//查询菜品的详情信息
		Food food =fooddetailserviceimpl.queryFood(foodId);
		request.setAttribute("food", food);
		//得到主食并存入application里
    	Map<String, String> foodmain=fooddetailserviceimpl.getFoodMain(foodId);
		request.setAttribute("foodmain", foodmain);
		//得到材料并存入application里
    	Map<String, String> foodingredients=fooddetailserviceimpl.getIngredients(foodId);
		request.setAttribute("foodingredients", foodingredients);
		//得到其他信息并存入application里
    	Map<String, String> foodother=fooddetailserviceimpl.getfoodOther(foodId);
		request.setAttribute("foodother", foodother);
		//得到照片并存入application里
    	List<String> foodImg=fooddetailserviceimpl.getFoodImg(foodId);
		request.setAttribute("foodImg", foodImg);
	    //得到的文字并存入application里
	    List<String> foodstep=fooddetailserviceimpl.getFoodStep(foodId);
	    request.setAttribute("foodstep", foodstep);
	    //得到的类型并存入application里
	    List<String> foodtype=fooddetailserviceimpl.getFoodType(foodId);
	    request.setAttribute("foodtype", foodtype);
//	    //得到星级
//	   String grade=request.getParameter("mystargrade");
//	   //得到session
//		String phone=(String)request.getSession().getAttribute("phone");
//		//把三个数据存入函数
//		System.out.println("tianjia"+grade);
//		fooddetailserviceimpl.changeGrade(grade, foodId, phone);
//	   System.out.println(request.getRequestURI());
     	return "newcai";
	}
	}	


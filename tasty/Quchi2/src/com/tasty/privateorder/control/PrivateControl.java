package com.tasty.privateorder.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.entity.Food;
import com.tasty.entity.FoodType;
import com.tasty.privateorder.service.PrivateService;
/*
 * */
@Controller
public class PrivateControl {

	@Resource
	private PrivateService privateservice;
	
	@RequestMapping("/privateorder")
	public String privateorder(HttpServletRequest request) {
		System.out.println("进入privatecontrol");
		List<FoodType> list=this.privateservice.list();
		request.setAttribute("foodtype", list);
		
		String str1=request.getParameter("1");
		String str2=request.getParameter("2");
		String str3=request.getParameter("3");
		String str4=request.getParameter("4");
		String str5=new String("");
		String str6=new String("");
		String str7=new String("");
		String str8=new String("");
		
/*		System.out.println(str1);
		System.out.println(str2);
		System.out.println(str3);
		System.out.println(str4);*/
		
		 if(str1!=null) {
				str5=str1;
			}
		 if(str2!=null) {
				str6=str2;
			}
		if(str3!=null) {
				 str7=str3;
			}
		if(str4!=null) {
				str8=str4;
			}
		List<Food> list2=this.privateservice.findFood(str5,str6,str7,str8);
		request.setAttribute("typeName", list2);
		
		return "privateorder";
	}
	
	
}

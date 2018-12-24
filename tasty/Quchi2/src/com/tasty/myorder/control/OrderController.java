package com.tasty.myorder.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.myorder.service.OrderServiceImpl;
/**
 * 
 * @date 2018年12月4日 下午9:05:21 
 * @author 董机智
 * @return OrderController
 * @param
 */

@Controller

public class OrderController {
	@Resource
	private OrderServiceImpl orderServiceImpl;
	@RequestMapping("/myorder")
	public String getOrder(HttpServletRequest request, HttpServletResponse response) {
		//HttpSession session=request.getSession();
		//session.getAttribute("phone");
		HttpSession session=request.getSession();
		String phone=(String)session.getAttribute("phone");
		if(phone!=null&&!phone.equals(""))
		{
			System.out.println(phone);
			request.setAttribute("myorder", orderServiceImpl.getOrder(phone));
			return "myorder";
		}else {
			System.out.println("phone is null");
			return null;
		}
		
	}

}

package com.tasty.httpApiDemo;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class A {

	@RequestMapping("/yanzheng")
	public void name(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		  String phone = request.getParameter("phone");
		    AccountInfo.execute();
		    IndustrySMS.execute(phone);
/*			String yzm = request.getParameter("yzm");
			if (yzm == IndustrySMS.bianliang ) {
				response.getWriter().print("ok");
			} else {
				response.getWriter().print("fail");
			}*/
	}
	

	
/*	@RequestMapping("/yanzhengma")
	public void yanzhengma(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String yzm = request.getParameter("yzm");
		if (yzm == IndustrySMS.bianliang ) {
			response.getWriter().print("ok");
		} else {
			response.getWriter().print("fail");
		}
	}
	
	public A() {
		
	}*/

}

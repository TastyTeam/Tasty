package com.tasty.forgetPwd.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ForgetPwd2Controller {
	@RequestMapping(value = "/identity", method = RequestMethod.POST)
	public String findYan(HttpServletRequest request) {
		String yanI=request.getParameter("yan2");
		
		if(yanI.length()==0) {
			request.setAttribute("yani", "验证码不能为空");
			return "forgetPwd2";
		}else {
			return "forgetPwd3";
		}
	}
}

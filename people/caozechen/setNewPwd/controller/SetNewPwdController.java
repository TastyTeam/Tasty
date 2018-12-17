package com.tasty.setNewPwd.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tasty.entity.User;
@Controller
public class SetNewPwdController {
	@Resource
	public com.tasty.setNewPwd.service.SetNewPwdService SetNewPwdService;
	@RequestMapping(value = "/setNewPwd", method = RequestMethod.POST)
	public String updateUser(HttpServletRequest request) {
		String pwd=request.getParameter("pwd");
		String pwd1=request.getParameter("pwd1");
		Object obj=request.getServletContext().getAttribute("phones");		
		String phones=(String)obj;
		User user=SetNewPwdService.getUser(phones);
		if(pwd.length()==0) {
			request.setAttribute("msgs", "密码不能为空");
			return "forgetPwd3";
		}else if(!pwd.equals(pwd1)) {
			request.setAttribute("msgs", "密码和确认密码不同");
			return "forgetPwd3";
		}else if(pwd.equals(user.getPassword())) {
			request.setAttribute("msgs", "请输入新密码");
			return "forgetPwd3"	;		
		}else {
			user.setPassword(pwd);
			this.SetNewPwdService.updateUser(user);
			return "forgetPwd4"	;
		}
		
	}
}

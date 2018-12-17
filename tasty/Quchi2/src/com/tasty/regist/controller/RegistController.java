package com.tasty.regist.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tasty.entity.Regist;
import com.tasty.entity.Time;
import com.tasty.entity.User;
import com.tasty.regist.service.RegistService;
import com.tasty.httpApiDemo.*;



@Controller
public class RegistController {
	@Resource
	public RegistService registService;
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String toRegist(Regist regist,HttpServletRequest request) {
		List<User> list=this.registService.list();		
		User user = new User();
	
		if(regist.getPhone().length()==0) {
			request.setAttribute("msg1","手机号为空");
			return "register";
		}
		else if(regist.getPhone().length()!=11) {
			request.setAttribute("msg1","手机号格式不正确");
			request.setAttribute("phone", regist.getPhone());
			return "register";
		}else {
			
			int i;
			for(i=0;i<list.size();i++) {
				if(list.get(i).getPhone().equals(regist.getPhone())) {
					break;				
				}
			}
			if(i<list.size()) {
				request.setAttribute("msg1", "手机号已注册");
				request.setAttribute("phone", regist.getPhone());
				return "register";
			}else if(regist.getUsername().length()==0) {
				request.setAttribute("msg1", "名称为空");
				request.setAttribute("phone", regist.getPhone());
				return "register";
			}else if(regist.getPassword().length()==0) {
				request.setAttribute("msg1", "密码为空");
				request.setAttribute("phone", regist.getPhone());
				request.setAttribute("username", regist.getUsername());
				return "register";
			}else if(!regist.getPassword().equals(regist.getPassword1())) {
				request.setAttribute("phone", regist.getPhone());
				request.setAttribute("username", regist.getUsername());
				request.setAttribute("password", regist.getPassword());
				request.setAttribute("password1", regist.getPassword1());
				request.setAttribute("msg1", "密码和确认密码不相同");	
				return "register";
			}else if(regist.getYzm().length()==0 || regist.getYzm().equals("")) {
				request.setAttribute("phone", regist.getPhone());
				request.setAttribute("username", regist.getUsername());
				request.setAttribute("password", regist.getPassword());
				request.setAttribute("password1", regist.getPassword1());
				request.setAttribute("msg1", "验证码不能为空");	
				return "register";
			}else if(!regist.getYzm().equals(IndustrySMS.bianliang) ) {
				request.setAttribute("phone", regist.getPhone());
				request.setAttribute("username", regist.getUsername());
				request.setAttribute("password", regist.getPassword());
				request.setAttribute("password1", regist.getPassword1());
				request.setAttribute("msg1", "验证码有误，请重新获取");	
				return "register";
			}
			
			else {
				Date date=new Date();
				Time time=new Time();
				String t=time.time(date);
				user.setPhone(regist.getPhone());
				user.setUserName(regist.getUsername());
				user.setPassword(regist.getPassword());
				user.setRegistTime(t);
				user.setUserHeaderImg("img");
				
				this.registService.addAccount(user);
				//request.getSession().setAttribute("uname",user.getPhone()+";"+user.getUserName());	
				request.getSession().setAttribute("uname",user.getUserName());
				request.getSession().setAttribute("phone",user.getPhone());
				return "index";
			}
			
		}			

	}
}

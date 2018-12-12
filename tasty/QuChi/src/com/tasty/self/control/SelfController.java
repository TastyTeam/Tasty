package com.tasty.self.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.self.service.GetUserServiceImpl;
import com.tasty.self.service.SetUserServiceImpl;

@Controller

public class SelfController {

	@Resource
	private GetUserServiceImpl getUserServiceImpl;
	@Resource
	private SetUserServiceImpl setUserServiceImpl;
	@RequestMapping("/self")
	public void self(HttpServletRequest request, HttpServletResponse response) {
		String phone=request.getParameter("phone");
		getUserServiceImpl.getuser(phone);
	}
	@RequestMapping("/name")
	public void name(HttpServletRequest request, HttpServletResponse response) {
		String phone=request.getParameter("phone");
		String name=request.getParameter("name");
		setUserServiceImpl.setusername(name, phone);
	}
	@RequestMapping("/password")
	public void password(HttpServletRequest request, HttpServletResponse response) {
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		setUserServiceImpl.setpassword(password, phone);;
	}
	@RequestMapping("/sex")
	public void sex(HttpServletRequest request, HttpServletResponse response) {
		String phone=request.getParameter("phone");
		String sex=request.getParameter("sex");
		setUserServiceImpl.setsex(sex, phone);;
	}
	@RequestMapping("/address")
	public void address(HttpServletRequest request, HttpServletResponse response) {
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		setUserServiceImpl.setaddress(address, phone);;
	}

}

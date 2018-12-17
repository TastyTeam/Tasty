package com.tasty.self.control;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	public String self(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		String phone=(String)session.getAttribute("phone");
		request.setAttribute("user", getUserServiceImpl.getuser(phone));
		return "self";
	}
	@RequestMapping("/name")
	public void name(HttpServletRequest request, HttpServletResponse response, String Redirect) throws IOException {
		HttpSession session=request.getSession();
		String phone=(String)session.getAttribute("phone");
		String name=request.getParameter("name");
		setUserServiceImpl.setusername(name, phone);
		response.sendRedirect("self");
	}
	@RequestMapping("/password")
	public void password(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		String phone=(String)session.getAttribute("phone");
		String password=request.getParameter("password");
		setUserServiceImpl.setpassword(password, phone);
		response.sendRedirect("self");
	}
	@RequestMapping("/sex")
	public void sex(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		String phone=(String)session.getAttribute("phone");
		String sex=request.getParameter("sex");
		setUserServiceImpl.setsex(sex, phone);
		response.sendRedirect("self");
	}
	@RequestMapping("/address")
	public void address(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		String phone=(String)session.getAttribute("phone");
		String address=request.getParameter("address");
		setUserServiceImpl.setaddress(address, phone);
		response.sendRedirect("self");
	}

}

package com.backstage.register.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.backstage.register.service.RegisterServiceImpl;
/**
 * @date 2018年12月13日 上午10:36:56 
 * @author 王玉玲
*/
@Controller
public class RegisterController {
	@Resource
	private RegisterServiceImpl registerserviceimpl; 
	@RequestMapping("/register")
	public String register(HttpServletRequest request,HttpServletResponse response) {
		//获得参数
		String managername=request.getParameter("name");
		String password=request.getParameter("password");
		String rpassword=request.getParameter("rpassword");
		String email=request.getParameter("email");
		//检验是否注册过
		Boolean b=registerserviceimpl.registerBefore(email);
		if(b) {
			return "login";
		}
	/*	//检验两次密码是否一致
		String wordforpassword=registerserviceimpl.registerJudePassword(password, rpassword);
		if(!wordforpassword.equals("ok")) {
			
		}*/
		//存入数据
		registerserviceimpl.register(rpassword, managername, email);
		
		System.out.println(email);
		return "index";
	}
}

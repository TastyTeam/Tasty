package com.tasty.httpApiDemo;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class B {

	@RequestMapping("/zhaohui")
	public void mima(HttpServletRequest request, HttpServletResponse response) throws IOException {
			
		  String phone = request.getParameter("phones");
		    AccountInfo.execute();
		    IndustrySMS.execute(phone);
	}
	public B() {
		// TODO Auto-generated constructor stub
	}

}

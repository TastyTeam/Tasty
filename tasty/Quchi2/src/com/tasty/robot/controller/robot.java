package com.tasty.robot.controller;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/***
 * 
 * @author 袁培凯
 *python连接，ajax实现异步聊天
 */
@Controller
public class robot {
	

	@RequestMapping("/robot")
	public String cart(HttpServletRequest request,HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");	
		//接受参数
		String username = request.getParameter("username");
		String iphone=(String)request.getSession().getAttribute("phone");
		try {
			//写自己的文档路径默认eclipse工作目录下
			String[] arg = new String[] { "E://anaconda//python", "D://robot.py", username,iphone};
			Process proc = Runtime.getRuntime().exec(arg);
			BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream(),"GBK"));
			String line = null;
			while ((line = in.readLine()) != null) {
				//响应数据
				response.getWriter().print(line+"<br/>");
			}
			in.close();
			proc.waitFor();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		return null;
	}
}

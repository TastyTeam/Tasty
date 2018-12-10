package com.tasty.community.control;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;


import com.tasty.community.service.ComServiceImpl;

@Controller
public class comcontrol {
	@Resource
	private ComServiceImpl comServiceImpl;
	
	@RequestMapping("/cold")
	public void addcom(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String content=request.getParameter("content");
		String id=request.getParameter("communitiesid");
		if (id!=null&&!id.equals("")&&content!=null&&!content.equals("")) {
			int id1=Integer.parseInt(id);
			String content1=content;
			comServiceImpl.insertCommunity(id1, content1);
			
		}
		System.out.println("4");
		System.out.println(content);
	}
}

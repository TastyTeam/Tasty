package com.tasty.mycommunity.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.entity.Community;
import com.tasty.entity.User;
import com.tasty.mycommunity.service.MyCommunityService;

@Controller
public class MyCommunityControl {

	@Resource
	private MyCommunityService mycommunityservice;
	
	@RequestMapping("/comment")
	public String MyCommunity(HttpServletRequest request) {
		Object object=request.getSession().getAttribute("phone");
		System.out.println("我的手机号1是："+object);
		String phone=(String) object;
		System.out.println("我的手机号2是："+phone);
		User list=this.mycommunityservice.list(phone);
		request.setAttribute("MyCommunity", list);
		return "comment";
	}

}

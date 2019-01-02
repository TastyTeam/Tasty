package com.tasty.mycommunity.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.entity.User;
import com.tasty.mycommunity.service.MyCommunityService;

@Controller
public class MyCommunityControl {

	@Resource
	private MyCommunityService mycommunityservice;
	
	@RequestMapping("/comment")
	public String MyCommunity(HttpServletRequest request) {
		Object object=request.getSession().getAttribute("phone");
		String phone=(String) object;
		User list=this.mycommunityservice.list(phone);
		request.setAttribute("MyCommunity", list);
		return "comment";
	}

}

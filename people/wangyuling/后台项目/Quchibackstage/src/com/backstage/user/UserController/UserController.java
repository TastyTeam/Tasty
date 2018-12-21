package com.backstage.user.UserController;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.backstage.entity.User;
import com.backstage.user.UserServiceImpl.UserServiceImpl;

/**
 * @date 2018年12月21日 下午12:58:09 
 * @author 王玉玲
 * @desc展示用户的信息
*/
@Controller
public class UserController {
	@Resource
	private UserServiceImpl userserviceimpl;
	@RequestMapping(name="user")
	public String userInformation(HttpServletRequest request) {
		String dphone=request.getParameter("dphone");
		System.out.println(dphone+"wabgfds");
		if(dphone!=null) {
			System.out.println("dsfskldfjs");
			userserviceimpl.duser(dphone);
			
		}
		List<User> userlist=userserviceimpl.getUserInformation();
		request.setAttribute("myuser", userlist);
		
		return "User/index";
	}
	
}

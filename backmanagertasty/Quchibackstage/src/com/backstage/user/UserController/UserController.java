package com.backstage.user.UserController;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	@RequestMapping(value="/searchuser", method=RequestMethod.POST)
	public String searchUser(HttpServletRequest request) {

		//得到电话
				String sphone=request.getParameter("sphone");
				System.out.println(sphone+"wabgfds");
				
		//查询操作
				List<User> userlist=userserviceimpl.getOneUserInformation(sphone);
				request.setAttribute("myuser", userlist);
				return "User/index";
	}
	@RequestMapping(value="/user",method=RequestMethod.GET)
	public String userInformation(HttpServletRequest request) {
	//得到电话
		String dphone=request.getParameter("dphone");
	//对于得到的参数进行判断处理
		if(dphone!=null) {
			System.out.println("dsfskldfjs");
			//如果删除请进行删除
			userserviceimpl.duser(dphone);	
		}
		//查询操作
		List<User> userlist=userserviceimpl.getUserInformation();
		request.setAttribute("myuser", userlist);
		return "User/index";
	}
	
}

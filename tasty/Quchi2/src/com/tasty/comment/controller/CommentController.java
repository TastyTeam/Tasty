package com.tasty.comment.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tasty.comment.service.CommentService;
import com.tasty.community.service.CommunitiesServiceImpl;
import com.tasty.entity.Comment;
import com.tasty.entity.Community;
import com.tasty.entity.Time;
import com.tasty.entity.User;

/**
 * @date 2018��12��17��
 * @author ����
*/

@Controller
public class CommentController {
	@Resource
	private CommentService commentService;
	@Resource
	private CommunitiesServiceImpl communitiesserviceimpl;
	private static int id;
	@RequestMapping(value = "/remark", method = RequestMethod.GET)
	public String remarkfirst(HttpServletRequest request) {
		String id=request.getParameter("id");
		System.out.println(id);
		int id1=Integer.parseInt(id);
		//�õ���Ӧ������
		System.out.println(id1);
		Community community=communitiesserviceimpl.queryOneCommunities(id1);
	
		request.setAttribute("onearticle", community);
		//�õ���Ӧ���µ����ۼ���
		List<Comment> listc=this.commentService.getComments(id1);
		request.getSession().setAttribute("listc",listc);
		this.id=id1;
		return "huaxiang";
	}
	
	@RequestMapping(value = "/remark", method = RequestMethod.POST)
	public String remark(HttpServletRequest request) {
		Object obj=request.getSession().getAttribute("uname");
		Object obj1=request.getSession().getAttribute("phone");
		User user=new User();		
		String uname=(String)obj;
		
		String uphone=(String)obj1;
		user.setPhone(uphone);
		user.setUserName(uname);
		Date date=new Date();
		Time time=new Time();
		String t=time.time(date);
		String rmark=request.getParameter("rmark");
		
		/*String id=request.getParameter("id");*/
		/*System.out.println(id);
		int id1=Integer.parseInt(id);*/
		Community community=new Community();
		community.setCommunityid(id);
		Comment comment=new Comment();
		comment.setCommunity(community);
		comment.setCommentDiscussion(rmark);
		comment.setCommentTime(t);		
		comment.setUser(user);
		comment.setCommentReviewed(1);
		this.commentService.addComment(comment);
		
	List<Comment> listc=this.commentService.getComments(community.getCommunityid());
		//request.setAttribute("listc",listc);
		request.getSession().setAttribute("listc",listc);
		//�ڶ�����������
		//�õ���Ӧ������
		System.out.println(id);
		Community community1=communitiesserviceimpl.queryOneCommunities(id);
	
		request.setAttribute("onearticle", community1);
		//�õ���Ӧ���µ����ۼ���
		List<Comment> listc1=this.commentService.getComments(id);
		request.getSession().setAttribute("listc",listc1);
		return "huaxiang";
		
	}
}

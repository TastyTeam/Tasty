package com.tasty.ordercontent.control;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.tasty.ordercontent.service.OrderContentInsertService;
/**
 * 
 * @date 2018年12月7日 上午10:17:50 
 * @author 董莹
 * @return OrderContentInsertController
 * @param
 */
@Controller
public class OrderContentInsertController {
	@Resource
	private OrderContentInsertService orderContentInsertService;

	@RequestMapping("/insertorder")
	public void insertorder(HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		Object obj=session.getAttribute("orderuuid");
		String orderuuid = (String)obj;
		System.out.println(orderuuid);
		String orderName=request.getParameter("name");
		String orderSex=request.getParameter("sex");
		System.out.println(orderSex);
		String orderAddress=request.getParameter("address");
		String phone=request.getParameter("tel");
		orderContentInsertService.insertmyorder(phone, orderuuid, orderName, orderAddress,orderSex);
		response.sendRedirect("ordercontent");
	}
	
	
	@RequestMapping("/insertother")
	public void insertother(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		Object obj=session.getAttribute("orderuuid");
		String orderuuid = (String)obj;
		
		String addinformation=request.getParameter("addinformation");
		String tableware=request.getParameter("tableware");
		int tableware2=Integer.parseInt(tableware);
		orderContentInsertService.insertother(addinformation, tableware2, orderuuid);
		response.sendRedirect("success.jsp");
		
	}

}

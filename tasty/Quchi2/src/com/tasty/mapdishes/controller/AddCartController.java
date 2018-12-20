package com.tasty.mapdishes.controller;

import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.accessibility.internal.resources.accessibility;
import com.tasty.entity.OrderDetail;
import com.tasty.mapdishes.service.AddCartServiceImpl;

/**
 * 
 * @date 2018年12月7日 下午5:04:11 
 * @author 董莹
 * @return AddCartController
 * @param
 */
@Controller
public class AddCartController {
	@Resource
	private AddCartServiceImpl addCartServiceImpl;
	@RequestMapping("/add")
	public void add(HttpServletRequest request,HttpServletResponse response) {
		String fastfoodid=request.getParameter("fastfoodId");
		String count=request.getParameter("count");
		String phone1=request.getParameter("phone");
		String si=request.getParameter("shopIdd");
		System.out.println(si);
		int shopid=Integer.parseInt(si);
		
		HttpSession session=request.getSession();
		String phone=(String)session.getAttribute("phone");
		
		if(phone1.equals(phone)) {
			String orderuuid=(String)session.getAttribute("orderuuid");
			System.out.println("dyyy"+phone);
			if(orderuuid!=null&&!orderuuid.equals("")) {	
				int fastfoodNumber=Integer.parseInt(count);
				int fastfoodId=Integer.parseInt(fastfoodid);
				java.util.Random r=new java.util.Random();
				int orderDetailId=r.nextInt();
				System.out.println(orderDetailId);
				addCartServiceImpl.setorderdetail(orderuuid,fastfoodNumber,fastfoodId,orderDetailId);
				System.out.println("1");
				addCartServiceImpl.setMyOrderShopId(orderuuid, shopid);;
			}
			else {
				int fastfoodNumber=Integer.parseInt(count);
				int fastfoodId=Integer.parseInt(fastfoodid);
				String orderuuid1 = UUID.randomUUID().toString().replaceAll("-", "");
				System.out.println(orderuuid1);
				session.setAttribute("orderuuid", orderuuid1);
				java.util.Random r=new java.util.Random();
				int orderDetailId=r.nextInt();
				System.out.println(orderDetailId);
				System.out.println("2");
				addCartServiceImpl.setorderdetail(orderuuid1,fastfoodNumber,fastfoodId,orderDetailId);
				addCartServiceImpl.setshopIdTOMyOrder(orderuuid1, shopid,phone);
			}
		}else {
			session.setAttribute("phone", phone1);
			int fastfoodNumber=Integer.parseInt(count);
			int fastfoodId=Integer.parseInt(fastfoodid);
			String orderuuid = UUID.randomUUID().toString().replaceAll("-", "");
			System.out.println(orderuuid);
			session.setAttribute("orderuuid", orderuuid);
			java.util.Random r=new java.util.Random();
			int orderDetailId=r.nextInt();
			System.out.println(orderDetailId);
			System.out.println("3");
			addCartServiceImpl.setorderdetail(orderuuid,fastfoodNumber,fastfoodId,orderDetailId);
			addCartServiceImpl.setshopIdTOMyOrder(orderuuid, shopid,phone);
		}
	} 
	

}

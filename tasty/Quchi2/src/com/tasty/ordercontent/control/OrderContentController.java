package com.tasty.ordercontent.control;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.entity.Cart;
import com.tasty.entity.OrderDetail;
import com.tasty.ordercontent.service.OrderContentServiceImpl;
import com.tasty.ordercontent.service.OrderContentSetCountService;
/**
 * 
 * @date 2018年12月7日 上午10:18:08 
 * @author 董莹
 * @return OrderContentController
 * @param
 */
@Controller
public class OrderContentController {

	@Resource
	private OrderContentServiceImpl orderContentServiceImpl;
	@Resource
	public OrderContentSetCountService ordercontentsetcountservice;
	
	@RequestMapping("/ordercontent")
	public String getorder(HttpServletRequest request, HttpServletResponse response) throws IOException{
		HttpSession session=request.getSession();
		Object obj=session.getAttribute("orderuuid");
		System.out.println("orderrrr"+obj);
		if (obj!=null) {
			String orderuuid = (String)obj;
			//ordercontent界面左侧获取内容
			 List<Cart> cart=orderContentServiceImpl.getfastfood(orderuuid);
			request.setAttribute("cart",cart);
			int price=0;
			for(Object o:cart) {
				Cart c=(Cart)o;
				int foodcount=c.getCount();
				int foodprice=c.getFastfood().getFastfoodPrice();
				price=foodcount*foodprice+price;
			}
			ordercontentsetcountservice.setshoppingfee(price, orderuuid);
			//request.setAttribute("count", );
			//ordercontent界面右侧获取内容
			request.setAttribute("orderuu", orderContentServiceImpl.getmyorder(orderuuid));
			request.setAttribute("all",price);
			return "ordercontent";
		}else {
			
			return null;
		}
		
	}
	@RequestMapping("/insertcount")
	public void insertcount(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String count=request.getParameter("count");
		String fastfoodId=request.getParameter("fastfoodId");
		HttpSession session=request.getSession();
		
		Object obj=session.getAttribute("orderuuid");
		int count3=Integer.parseInt(count);
		if (obj!=null) {
			String orderuuid = (String)obj;
		if(count!=null&&!count.equals("")&&orderuuid!=null&&!orderuuid.equals("")) {
			int count2=Integer.parseInt(count);
			int id=Integer.parseInt(fastfoodId);
			System.out.println("count数量"+count);
			ordercontentsetcountservice.setcount(count2,orderuuid,id);
			response.sendRedirect("ordercontent");
			if(count2==0) {
				ordercontentsetcountservice.delcount(orderuuid, id);
			}else {
				
				}
			}
		} 
		
	}

}

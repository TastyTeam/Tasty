package com.tasty.ourProvide.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tasty.entity.Navigation;
import com.tasty.entity.OurProvide;
import com.tasty.ourProvide.service.OurProvideService;

/**
 * @date 12.4
 * @author 祁虹蕾
 * @return ${return_type}
 * @param 
*/
@Controller
public class OurProvideControl {
	@Resource
	private OurProvideService ourProvideService;
	
	@Resource
	public com.tasty.nagivation.service.NagivationService nagivationService ;
	@RequestMapping("/ourprovide")
	public String ourprovide(HttpServletRequest request) {
		List<OurProvide> list=this.ourProvideService.list();
		request.getServletContext().setAttribute("ourprovide", list);
		List<Navigation> lists=this.nagivationService.list();
		request.getServletContext().setAttribute("lists", lists);
		//request.setAttribute("lists", lists);
		
		return "main";
	}
}

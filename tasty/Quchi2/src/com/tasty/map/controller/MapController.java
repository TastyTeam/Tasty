package com.tasty.map.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tasty.entity.Restaurant;
import com.tasty.map.service.MapService;
/**
 * @author 袁培凯
 * @查询商家
 * */
@Controller
public class MapController {
	@Resource
	private MapService mapService;
	
	@RequestMapping("/map")
	public String findAll(HttpServletRequest request) {
		List<Restaurant> map=mapService.selectAll();
		request.setAttribute("map_value",map);
		return "map";
	}
}

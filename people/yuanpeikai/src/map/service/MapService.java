package com.tasty.map.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tasty.entity.Address;
import com.tasty.entity.Restaurant;
import com.tasty.map.dao.MapDao;


@Service
public class MapService {
	@Resource
	private MapDao mapDao;
	/**
	 * @author 袁培凯
	 * @param 查询商家
	*/
	public List<Restaurant> selectAll() {
		return mapDao.findAll();
	}
	/**
	 * @author 袁培凯
	 * @param 查询地址
	*/
	public Address selectAddress(String add) {
		return mapDao.find(add);
	}
}

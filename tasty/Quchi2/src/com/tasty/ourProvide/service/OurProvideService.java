package com.tasty.ourProvide.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tasty.ourProvide.dao.OurProvideDao;
import com.tasty.entity.OurProvide;

@Service
@Transactional(readOnly=true)
public class OurProvideService {
	
	@Resource
	private OurProvideDao ourProvideDao;
	public List<OurProvide> list(){
		return this.ourProvideDao.findAll();
	}	
	
}

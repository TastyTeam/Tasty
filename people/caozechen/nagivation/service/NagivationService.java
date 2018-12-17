package com.tasty.nagivation.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tasty.entity.Navigation;
import com.tasty.entity.User;

@Service
public class NagivationService {
	@Resource
	public com.tasty.nagivation.dao.NagivationDao NagivationDao;
public List<Navigation> list() {
		return this.NagivationDao.findAll();
}
}
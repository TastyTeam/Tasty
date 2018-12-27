package com.backstage.register.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.backstage.register.dao.RegisterDaoImpl;

/**
 * @date 2018年12月13日 上午10:37:37 
 * @author 王玉玲
*/
@Service
public class RegisterServiceImpl {
	@Resource
	private  RegisterDaoImpl registerdaoimpl;
	
	/**
	 * @date 2018年12月13日 上午10:37:37 
	 * @author 王玉玲
	 * @desc判断当前邮箱是否注册过
	*/
	public Boolean registerBefore(String email) {
		return registerdaoimpl.registerBefore(email);
	
	}
	
	/**
	 * @date 2018年12月13日 上午10:37:37 
	 * @author 王玉玲
	 * @desc判断密码和确认密码是否一致
	*/
	public String registerJudePassword(String password, String rpassword) {
		if(password==null) {
				return "密码不能为空";
		}
		if(rpassword==null) {
			
			return "确认密码不能为空";
		}
		if(password==rpassword) {
			return "true";
		}else {
			return "密码、确认密码不一致";
		}	
	}
	/**
	 * @date 2018年12月13日 上午10:37:37 
	 * @author 王玉玲
	 * @desc存储
	*/
	public void register(String password, String name,String email) {
		registerdaoimpl.register(name, password, email);
	}
}

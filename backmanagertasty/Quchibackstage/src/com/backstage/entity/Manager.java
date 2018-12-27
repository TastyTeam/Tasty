package com.backstage.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @date 2018年12月13日 上午10:22:03 
 * @author 王玉玲
 * @param 
*/
@Entity
@Table(name="manager")
public class Manager {
	private String managerPassword;
	private String managerImg;
	private String managerRegisterTime;
	private String managerEmail;
	private String managerName;
	
	public Manager() {
		super();
		this.managerPassword = null;
		this.managerEmail = null;
		this.managerName = null;
		this.managerRegisterTime=null;
		this.managerImg=null;
	}
	public String getManagerPassword() {
		return managerPassword;
	}
	public void setManagerPassword(String managerPassword) {
		this.managerPassword = managerPassword;
	}
	public String getManagerImg() {
		return managerImg;
	}
	public void setManagerImg(String managerImg) {
		this.managerImg = managerImg;
	}
	public String getManagerRegisterTime() {
		return managerRegisterTime;
	}
	public void setManagerRegisterTime(String managerRegisterTime) {
		this.managerRegisterTime = managerRegisterTime;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public String getManagerEmail() {
		return managerEmail;
	}
	public void setManagerEmail(String managerEmail) {
		this.managerEmail = managerEmail;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	
}

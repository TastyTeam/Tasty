package com.tasty.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @date 2018/11/29 10:38 
 * @author 王玉玲
 * @return OurProvide
 */
@Entity
@Table(name="ourprovide")
public class OurProvide {
	private int ProvideId;
	private String provideName;
	private String  provideImg;
	private String provideText;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public String getProvideText() {
		return provideText;
	}
	public void setProvideText(String provideText) {
		this.provideText = provideText;
	}
	
	public int getProvideId() {
		return ProvideId;
	}
	public void setProvideId(int provideId) {
		ProvideId = provideId;
	}
	public String getProvideName() {
		return provideName;
	}
	public void setProvideName(String provideName) {
		this.provideName = provideName;
	}
	public String getProvideImg() {
		return provideImg;
	}
	public void setProvideImg(String provideImg) {
		this.provideImg = provideImg;
	}
}

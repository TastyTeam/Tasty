package com.tasty.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @date 2018/11/29 10:38 
 * @author 袁培凯
 * @return address
 * 坐标系实体对象
 */
@Entity
@Table(name="address")
public class Address {
	private int  addressid;
	private String addressname;
	private double  longitude;
	private double  latitude;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getAddressid() {
		return addressid;
	}
	public void setAddressid(int addressid) {
		this.addressid = addressid;
	}
	public String getAddressname() {
		return addressname;
	}
	public void setAddressname(String addressname) {
		this.addressname = addressname;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	
	
}

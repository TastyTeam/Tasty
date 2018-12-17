package com.tasty.entity;

import java.sql.Time;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

/**
 * 
 * @date 2018年11月29日 上午10:44:17 
 * @author 董机智
 * @return myorder
 */
@Entity
@Table(name="myorder")
public class MyOrder {
	
	private String orderuuid;
	private int tableware;
	private int shoppingFee;
	private String orderAddress;
	private String orderSex;
	private String orderTel; 
	private String addInformation;
	private String orderName; 
	private String orderState;
	private String orderTime;
	private Set<OrderDetail> orderdetail=new HashSet<OrderDetail>(0);
	private User user;
	private Restaurant restaurant;
	@ManyToOne(targetEntity=Restaurant.class)
	@JoinColumn(name="shopId")
	public Restaurant getRestaurant() {
		return restaurant;
	}
	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}
	@ManyToOne(targetEntity=User.class)
	@JoinColumn(name="phone")
	 public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@Id
	@GeneratedValue(generator="mysi")
	@GenericGenerator(name="mysi", strategy="assigned")
	public String getOrderuuid() {
		return orderuuid;
	}
	public void setOrderuuid(String orderuuid) {
		this.orderuuid = orderuuid;
	}
	@OneToMany(targetEntity=OrderDetail.class,mappedBy="order")
	@Cascade(value= {CascadeType.ALL})
	public Set<OrderDetail> getOrderdetail() {
		return orderdetail;
	}
	public void setOrderdetail(Set<OrderDetail> orderdetail) {
		this.orderdetail = orderdetail;
	}
	
	public int getTableware() {
		return tableware;
	}
	public void setTableware(int tableware) {
		this.tableware = tableware;
	}
	public int getShoppingFee() {
		return shoppingFee;
	}
	public void setShoppingFee(int shoppingFee) {
		this.shoppingFee = shoppingFee;
	}
	public String getOrderAddress() {
		return orderAddress;
	}
	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}

	public String getOrderSex() {
		return orderSex;
	}
	public void setOrderSex(String orderSex) {
		this.orderSex = orderSex;
	}
	
	public String getOrderTel() {
		return orderTel;
	}
	public void setOrderTel(String orderTel) {
		this.orderTel = orderTel;
	}
	public String getAddInformation() {
		return addInformation;
	}
	public void setAddInformation(String addInformation) {
		this.addInformation = addInformation;
	}
	
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public String getphone(User u) {
		return u.getPhone();
	}
	public void setphone(User u,String phone) {
		u.setPhone(phone);
	}
	
	
}

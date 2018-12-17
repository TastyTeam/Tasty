package com.tasty.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;


/**
 * 
 * @date 2018年11月29日 上午10:50:28 
 * @author 董机智
 * @return Restaurant
 */
@Entity
@Table(name="restaurant")
public class Restaurant {
	private int shopId;
	private String shopName;
	private int arriveTime;
	private int sendFare;
	private String shopIntroduce;
	private double longitude ;
	private double latitude;
	private String lawyerpeople ;
	private String shopImg;
	private String SendFareMore;
	private String  fullReduce;
	private Set<MyOrder> myorder=new HashSet<MyOrder>(0);
	private Set<Dishes> restaurantdishes=new HashSet<Dishes>(0); 
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	@OneToMany(targetEntity=MyOrder.class,mappedBy="restaurant")
	@Cascade(value= {CascadeType.ALL})
	public Set<MyOrder> getOrder() {
		return myorder;
	}
	public void setOrder(Set<MyOrder> myorder) {
		this.myorder = myorder;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public int getArriveTime() {
		return arriveTime;
	}
	public void setArriveTime(int arriveTime) {
		this.arriveTime = arriveTime;
	}
	public int getSendFare() {
		return sendFare;
	}
	public void setSendFare(int sendFare) {
		this.sendFare = sendFare;
	}
	public String getShopIntroduce() {
		return shopIntroduce;
	}
	public void setShopIntroduce(String shopIntroduce) {
		this.shopIntroduce = shopIntroduce;
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
	public String getLawyerpeople() {
		return lawyerpeople;
	}
	public void setLawyerpeople(String lawyerpeople) {
		this.lawyerpeople = lawyerpeople;
	}
	@OneToMany(targetEntity=Dishes.class,mappedBy="restaurant")
	@Cascade(value= {CascadeType.ALL})
	public Set<Dishes> getRestaurantdishes() {
		return restaurantdishes;
	}
	public void setRestaurantdishes(Set<Dishes> restaurantdishes) {
		this.restaurantdishes = restaurantdishes;
	}
	public String getShopImg() {
		return shopImg;
	}
	public void setShopImg(String shopImg) {
		this.shopImg = shopImg;
	}
	public String getSendFareMore() {
		return SendFareMore;
	}
	public void setSendFareMore(String sendFareMore) {
		SendFareMore = sendFareMore;
	}
	public String getFullReduce() {
		return fullReduce;
	}
	public void setFullReduce(String fullReduce) {
		this.fullReduce = fullReduce;
	}
	

}

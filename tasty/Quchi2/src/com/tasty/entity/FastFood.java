package com.tasty.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * @date 2018/11/29 10:38 
 * @author 王玉玲
 * @return null
 * $entity
 */
@Entity
@Table(name="fastfood")
public class FastFood {
	private int fastfoodId;
	private String fastfoodName;
	private int fastfoodPrice;
	private String introduce;
	private String fastfoodImg;
	private int shopId;
	private Dishes dishes;
	/*private OrderDetail orderdetail;
	@ManyToOne(targetEntity=OrderDetail.class)
	@JoinColumn(name="orderDetailId")
	public OrderDetail getOrderdetail() {
		return orderdetail;
	}
	public void setOrderdetail(OrderDetail orderdetail) {
		this.orderdetail = orderdetail;
	}*/
	@ManyToOne(targetEntity=Dishes.class)
	@JoinColumn(name="dishesId")
	public Dishes getDishes() {
		return dishes;
	}
	public void setDishes(Dishes dishes) {
		this.dishes = dishes;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getFastfoodId() {
		return fastfoodId;
	}
	public void setFastfoodId(int fastfoodId) {
		this.fastfoodId = fastfoodId;
	}
	public String getFastfoodName() {
		return fastfoodName;
	}
	public void setFastfoodName(String fastfoodName) {
		this.fastfoodName = fastfoodName;
	}
	
	public int getFastfoodPrice() {
		return fastfoodPrice;
	}
	public void setFastfoodPrice(int fastfoodPrice) {
		this.fastfoodPrice = fastfoodPrice;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	public String getFastfoodImg() {
		return fastfoodImg;
	}
	public void setFastfoodImg(String fastfoodImg) {
		this.fastfoodImg = fastfoodImg;
	}
	
	
}

package com.tasty.entity;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;

/**
 * 
 * @date 2018年11月29日 上午10:50:28 
 * @author 王玉玲
 * @return orderdetail
 */
@Entity
@Table(name="orderdetail")
public class OrderDetail {
	private int orderDetailId;
	private int fastfoodNumber;
	private int fastfoodId;
	/*private Set<FastFood>fastfood=new HashSet<FastFood>(0);*/
	private MyOrder order;
	
	/*@OneToMany(targetEntity=OrderDetail.class,mappedBy="fastfood")
	@Cascade(value= {org.hibernate.annotations.CascadeType.ALL})
	public Set<FastFood> getFastfood() {
		return fastfood;
	}
	public void setFastfood(Set<FastFood> fastfood) {
		this.fastfood = fastfood;
	}*/
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getOrderDetailId() {
		return orderDetailId;
	}
	
	public void setOrderDetailId(int orderDetailId) {
		this.orderDetailId = orderDetailId;
	}
	@ManyToOne(targetEntity=MyOrder.class)
	@JoinColumn(name="orderuuid")

	public MyOrder getOrder() {
		return order;
	}
	public void setOrder(MyOrder order) {
		this.order = order;
	}
	
	public int getFastfoodNumber() {
		return fastfoodNumber;
	}
	public void setFastfoodNumber(int fastfoodNumber) {
		this.fastfoodNumber = fastfoodNumber;
	}

	public int getFastfoodId() {
		return fastfoodId;
	}

	public void setFastfoodId(int fastfoodId) {
		this.fastfoodId = fastfoodId;
	}
	
	
}

package com.tasty.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

/**
 * @date 2018/11/29 10:38 
 * @author 王玉玲
 * @return null
 * $entity
 */
@Entity
@Table(name="dishes")
public class Dishes {
	private int dishesId;
	private String dishesName;
	private Set<FastFood> setfastfood=new HashSet<FastFood>(0);
	private Restaurant restaurant;
	@ManyToOne(targetEntity=Restaurant.class)
	@JoinColumn(name="shopId")
	public Restaurant getRestaurant() {
		return restaurant;
	}
	public void setRestaurant(Restaurant restaurant) {
		this.restaurant= restaurant;
	}
	@OneToMany(targetEntity=FastFood.class,mappedBy="dishes")
	@Cascade(value= {CascadeType.ALL})
	public Set<FastFood> getSetfastfood() {
		return setfastfood;
	}
	public void setSetfastfood(Set<FastFood> setfastfood) {
		this.setfastfood = setfastfood;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getDishesId() {
		return dishesId;
	}
	public void setDishesId(int dishesId) {
		this.dishesId = dishesId;
	}
	
	public String getDishesName() {
		return dishesName;
	}
	public void setDishesName(String dishesName) {
		this.dishesName = dishesName;
	}
	
	 
}

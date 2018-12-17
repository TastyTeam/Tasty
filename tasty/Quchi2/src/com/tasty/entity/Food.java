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
import javax.persistence.Table;

/**
 * @date 2018/11/29 10:38 
 * @author 王玉玲
 * @return null
 * $entity
 */
@Entity
@Table(name="food")
public class Food {
	private int foodId;
	private String foodName;
	private String foodMain;
	private String foodIngredients;
	private String foodOther;
	private String foodSteptext;
	private String foodType;
	private String foodTip;
	private String foodStepimg;
	private String title;
	private Set<FoodType> foodtype=new HashSet<FoodType>(0);
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getFoodId() {
		return foodId;
	}

	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}
	@ManyToMany(targetEntity=FoodType.class)
	@JoinTable(name="foodfoodtype",joinColumns= {@JoinColumn(name="foodId")},inverseJoinColumns={@JoinColumn(name="foodTypeId")})
	public Set<FoodType> getFoodtype() {
		return foodtype;
	}
	public void setFoodtype(Set<FoodType> foodtype) {
		this.foodtype = foodtype;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getFoodMain() {
		return foodMain;
	}
	public void setFoodMain(String foodMain) {
		this.foodMain = foodMain;
	}
	public String getFoodIngredients() {
		return foodIngredients;
	}
	public void setFoodIngredients(String foodIngredients) {
		this.foodIngredients = foodIngredients;
	}
	public String getFoodOther() {
		return foodOther;
	}
	public void setFoodOther(String foodOther) {
		this.foodOther = foodOther;
	}
	public String getFoodSteptext() {
		return foodSteptext;
	}
	public void setFoodSteptext(String foodSteptext) {
		this.foodSteptext = foodSteptext;
	}
	public String getFoodType() {
		return foodType;
	}
	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}
	public String getFoodTip() {
		return foodTip;
	}
	public void setFoodTip(String foodTip) {
		this.foodTip = foodTip;
	}
	public String getFoodStepimg() {
		return foodStepimg;
	}
	public void setFoodStepimg(String foodStepimg) {
		this.foodStepimg = foodStepimg;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

}

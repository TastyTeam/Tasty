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
import javax.persistence.OrderBy;
import javax.persistence.Table;

/**
 * 
 * @date 2018年11月29日 上午10:33:30 
 * @author 董机智
 * @return FoodType
 */
@Entity
@Table(name="foodtype")
public class FoodType {

	private int foodTypeId;
	private String typeName;
	
	private Set<FoodType> childTypes=new HashSet<FoodType>();
	private FoodType parentId;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getFoodTypeId() {
		return foodTypeId;
	}
	public void setFoodTypeId(int foodTypeId) {
		this.foodTypeId = foodTypeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	@OneToMany(mappedBy="parentId",
			targetEntity=FoodType.class,
			cascade= {CascadeType.REMOVE})
	@OrderBy("foodTypeId")
	public Set<FoodType> getChildTypes() {
		return childTypes;
	}
	public void setChildTypes(Set<FoodType> childTypes) {
		this.childTypes = childTypes;
	}
	@ManyToOne
	@JoinColumn(name="parentId")
	public FoodType getParentId() {
		return parentId;
	}
	public void setParentId(FoodType parentId) {
		this.parentId = parentId;
	}

	

}

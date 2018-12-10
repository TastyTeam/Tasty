package com.tasty.entity;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 
 * @date 2018年11月29日 上午10:48:43 
 * @author 董机智
 * @return Map
 */
@Entity
@Table(name="map")
public class Map {

	private int mapId;
	private double longitude;
	private double latitude;
	private int shopId;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getMapId() {
		return mapId;
	}
	public void setMapId(int mapId) {
		this.mapId = mapId;
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
	public int getShopId() {
		return shopId;
	}
	public void setShopId(int shopId) {
		this.shopId = shopId;
	}
	

}

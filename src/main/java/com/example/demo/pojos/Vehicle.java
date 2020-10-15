package com.example.demo.pojos;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
//@Table(schema="vrs")
public class Vehicle {
	int v_id;
	String v_type;
	String v_category;
	String v_name;
	String v_number;
	String v_cc;
	String v_day_rate;
	String v_fuel;
	String v_pic_path;
	String v_deposit;
	List<Orders> order=new ArrayList<>();
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getV_id() {
		return v_id;
	}
	public void setV_id(int v_id) {
		this.v_id = v_id;
	}
	
	@Column(length=10)
	public String getV_type() {
		return v_type;
	}
	public void setV_type(String v_type) {
		this.v_type = v_type;
	}
	
	@Column(length=10)
	public String getV_category() {
		return v_category;
	}
	public void setV_category(String v_category) {
		this.v_category = v_category;
	}
	
	@Column(length=10)
	public String getV_name() {
		return v_name;
	}
	public void setV_name(String v_name) {
		this.v_name = v_name;
	}
	
	@Column(length=10)
	public String getV_number() {
		return v_number;
	}
	public void setV_number(String v_number) {
		this.v_number = v_number;
	}
	
	@Column(length=10)
	public String getV_cc() {
		return v_cc;
	}
	public void setV_cc(String v_cc) {
		this.v_cc = v_cc;
	}
	
	@Column(length=10)
	public String getV_day_rate() {
		return v_day_rate;
	}
	public void setV_day_rate(String v_day_rate) {
		this.v_day_rate = v_day_rate;
	}
	
	@Column(length=10)
	public String getV_fuel() {
		return v_fuel;
	}
	public void setV_fuel(String v_fuel) {
		this.v_fuel = v_fuel;
	}
	
	@Column(length=30)
	public String getV_pic_path() {
		return v_pic_path;
	}
	public void setV_pic_path(String v_pic_path) {
		this.v_pic_path = v_pic_path;
	}
	
	@Column(length=10)
	public String getV_deposit() {
		return v_deposit;
	}
	public void setV_deposit(String v_deposit) {
		this.v_deposit = v_deposit;
	}
	
	@OneToMany(mappedBy="myVehicle",cascade=CascadeType.ALL)
	public List<Orders> getOrder() {
		return order;
	}
	public void setOrder(List<Orders> order) {
		this.order = order;
	}
	
	public Vehicle(String v_type, String v_category, String v_name, String v_number, String v_cc, String v_day_rate,
			String v_fuel, String v_pic_path, String v_deposit) {
		super();
		this.v_type = v_type;
		this.v_category = v_category;
		this.v_name = v_name;
		this.v_number = v_number;
		this.v_cc = v_cc;
		this.v_day_rate = v_day_rate;
		this.v_fuel = v_fuel;
		this.v_pic_path = v_pic_path;
		this.v_deposit = v_deposit;
	}
	
	@Override
	public String toString() {
		return "Vehicle [v_id=" + v_id + ", v_type=" + v_type + ", v_category=" + v_category + ", v_name=" + v_name
				+ ", v_number=" + v_number + ", v_cc=" + v_cc + ", v_day_rate=" + v_day_rate + ", v_fuel=" + v_fuel
				+ ", v_pic_path=" + v_pic_path + ", v_deposit=" + v_deposit + "]";
	}
	
	public Vehicle() {
		
	}
}

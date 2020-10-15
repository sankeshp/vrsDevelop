package com.example.demo.dao;

import java.util.Date;
import java.util.List;

import com.example.demo.pojos.Users;
import com.example.demo.pojos.Vehicle;

public interface MainDao {

	Users validateUser(String email,String pass);
	String registerUser(Users u);
	List<Vehicle> getVehicleList(String vType, String vCategory);
	String checkAvailability(int v_id, Date start_date, Date end_date);
	Vehicle getVehicleDetails(int v_id);
}

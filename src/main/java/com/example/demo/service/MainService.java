package com.example.demo.service;

import java.util.Date;
import java.util.List;

import com.example.demo.pojos.Users;
import com.example.demo.pojos.Vehicle;

public interface MainService {

	Users validateUser(String email,String pass);
	String registerUsers(Users u);
	List<Vehicle> getVehicleList(String vType,String vCategory);
	String checkAvailability(int v_id, Date start_date, Date end_date);
	Vehicle getVehicleDetails(int v_id);
}

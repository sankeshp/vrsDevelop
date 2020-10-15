package com.example.demo.service;


import java.util.List;

import com.example.demo.pojos.Feedback;
import com.example.demo.pojos.Orders;
import com.example.demo.pojos.Users;
import com.example.demo.pojos.Vehicle;


public interface AdminService {

	List<Vehicle> listVehicle();
	String updateVehicle(Vehicle v);
	//Vehicle vehicleDetails(int v_id);
	Vehicle getvehicleDetails(int v_id);
	String registerVehicle(Vehicle v);
	List<Users> listUser();
	Users getUserDetails(int u_id);
	String updateUser(Users u);
	String deleteVehicle(int v_id);
	String deleteUser(int uid);
	List<Feedback> listFeedback();
	List<Orders> listOrder();
	Orders getorderDetails(int o_id);
	String updateOrder(Orders o);
	String deleteOrder(int o_id);
	
	
}

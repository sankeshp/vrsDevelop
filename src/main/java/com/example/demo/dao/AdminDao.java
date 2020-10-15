package com.example.demo.dao;


import java.util.List;

import com.example.demo.pojos.Feedback;
import com.example.demo.pojos.Orders;
import com.example.demo.pojos.Users;
import com.example.demo.pojos.Vehicle;


public interface AdminDao {

	
	String registerVehicle(Vehicle v);
	List<Vehicle> listVehicle();
	String updateVehicle(Vehicle v);
	Vehicle getVehicleDetails(int v_id);
	Users getUserDetails(int u_id);
	List<Users> listUser();
	String updateUser(Users u);
	String deleteVehicleDetails(Vehicle v);
	String deleteUserDetails(Users u);
	List<Feedback> listFeedback();
	List<Orders> listOrder();
	Orders getorderDetails(int o_id);
	String updateOrders(Orders o);
	String deleteOrdersDetails(Orders o);
}

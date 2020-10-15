package com.example.demo.service;


import java.util.List;

import com.example.demo.pojos.Feedback;
import com.example.demo.pojos.Orders;
import com.example.demo.pojos.Users;

public interface UserService {

	int insertOrders(Orders o);

	List<Orders> getVehicleList(int u_id);

	String updateUser(Users u);

	Feedback getFeedback(int o_id);

	String insertFeedback(Feedback f);

}

package com.example.demo.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.UserDao;
import com.example.demo.pojos.Feedback;
import com.example.demo.pojos.Orders;
import com.example.demo.pojos.Users;

@Service("User_Service")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao dao;

	@Override
	public int insertOrders(Orders o) {
		return dao.insertOrders(o);
	}

	@Override
	public List<Orders> getVehicleList(int u_id) {
		// TODO Auto-generated method stub
		return dao.getVehicleList(u_id);
	}

	@Override
	public String updateUser(Users u) {
		// TODO Auto-generated method stub
		return dao.updateUser(u);
	}

	@Override
	public Feedback getFeedback(int o_id) {
		// TODO Auto-generated method stub
		return dao.getFeedback(o_id);
	}

	@Override
	public String insertFeedback(Feedback f) {
		// TODO Auto-generated method stub
		return dao.insertFeedback(f);
	}
	
}

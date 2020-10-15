package com.example.demo.service;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.MainDao;
import com.example.demo.pojos.Users;
import com.example.demo.pojos.Vehicle;

@Service("Main_Service")
@Transactional
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDao dao;
	
	@Override
	public Users validateUser(String email, String pass) {
		System.out.println("in login service");
		return dao.validateUser(email, pass);
	}

	@Override
	public String registerUsers(Users u) {
		return dao.registerUser(u);
	}

	@Override
	public List<Vehicle> getVehicleList(String vType, String vCategory) {
		System.out.println("in list service");
		return dao.getVehicleList(vType,vCategory);
	}

	@Override
	public String checkAvailability(int v_id, Date start_date, Date end_date) {
		System.out.println("in checkAvailability service");
		return dao.checkAvailability(v_id,start_date,end_date);
	}

	@Override
	public Vehicle getVehicleDetails(int v_id) {
		return dao.getVehicleDetails(v_id);
	}

}

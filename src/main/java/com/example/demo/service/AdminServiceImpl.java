package com.example.demo.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.AdminDao;
import com.example.demo.pojos.Feedback;
import com.example.demo.pojos.Orders;
import com.example.demo.pojos.Users;
import com.example.demo.pojos.Vehicle;




@Service("Admin_Service")
@Transactional
public class AdminServiceImpl implements AdminService  {

	
	@Autowired
	private AdminDao dao;
	
	@Override
	public List<Vehicle> listVehicle()
	{
		System.out.println("in admin service list");
		return dao.listVehicle();
	}

	@Override
	public String updateVehicle(Vehicle v) {
		// TODO Auto-generated method stub
		return dao.updateVehicle(v);
	}

	@Override
	public Vehicle getvehicleDetails(int v_id) {
		// TODO Auto-generated method stub
		return dao.getVehicleDetails(v_id);
	}
	@Override
	public String registerVehicle(Vehicle v) {
		return dao.registerVehicle(v);
	}
	
	@Override
	public List<Users> listUser()
	{
		System.out.println("in admin service list");
		return dao.listUser();
	}

	@Override
	public Users getUserDetails(int u_id) {
		// TODO Auto-generated method stub
		return dao.getUserDetails(u_id);
	}

	@Override
	public String updateUser(Users u) {
		// TODO Auto-generated method stub
		return dao.updateUser(u);
	}

	@SuppressWarnings("null")
	@Override
	public String deleteVehicle(int v_id) {
		// TODO Auto-generated method stub
		
		Vehicle v= dao.getVehicleDetails(v_id);
		if(v !=null)
			return dao.deleteVehicleDetails(v);
		return "vehicle deletion failed  Invalid ID " +v.getV_id();
		
		//Vendor v = dao.getVendorDetails(vendorId);
		//if (v != null)
		//	return dao.deleteVendorDetails(v);
		//return "Vendor deletion failed : Invalid ID " + v.getId();
	}

	@SuppressWarnings("null")
	@Override
	public String deleteUser(int u_id) {
		// TODO Auto-generated method stub
		Users u=dao.getUserDetails(u_id);
		
		if(u !=null)
			return dao.deleteUserDetails(u);

		return "user deletion is failed"+u.getU_id();
	}

	@Override
	public List<Feedback> listFeedback() {
		// TODO Auto-generated method stub
		System.out.println("in admin service list");
		return dao.listFeedback();
	}

	@Override
	public List<Orders> listOrder() {
		// TODO Auto-generated method stub
		System.out.println("in admin service list");
		return dao.listOrder();
	}

	@Override
	public Orders getorderDetails(int o_id) {
		// TODO Auto-generated method stub
		return dao.getorderDetails(o_id);
	}

	@Override
	public String updateOrder(Orders o) {
		// TODO Auto-generated method stub
		return dao.updateOrders(o);
	}

	@SuppressWarnings("null")
	@Override
	public String deleteOrder(int o_id) {
		// TODO Auto-generated method stub
		Orders o= dao.getorderDetails(o_id);
		if(o !=null)
			return dao.deleteOrdersDetails(o);
		return "Order deletion failed  Invalid ID " +o.getO_id();
	}




}

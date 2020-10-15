package com.example.demo.dao;


import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.pojos.Feedback;
import com.example.demo.pojos.Orders;
import com.example.demo.pojos.Users;
import com.example.demo.pojos.Vehicle;


@Repository
public class AdminDaoImpl implements AdminDao  {
	

	@Autowired
	private SessionFactory sf;
	
	
	public List<Vehicle> listVehicle()
	{
		String query="select v from Vehicle v";
		System.out.println("in admin dao");
		//System.out.println("vType "+vType);
		System.out.println(sf.getCurrentSession().createQuery(query, Vehicle.class).getResultList());
		return sf.getCurrentSession().createQuery(query, Vehicle.class).getResultList();
		
	}
	
	@Override
	public Vehicle getVehicleDetails(int v_id) {
		System.out.println( sf.getCurrentSession().get(Vehicle.class, v_id));
		return sf.getCurrentSession().get(Vehicle.class, v_id);
	}
	
	
	@Override
	public String updateVehicle(Vehicle v) {
	    
		//String query="update vehicle v set values "
		sf.getCurrentSession().update(v);
		return "Vendor Details for ID "+v.getV_id()+" updated...";
	}
	@Override
	public String registerVehicle(Vehicle v) {
		sf.getCurrentSession().persist(v);
		return "Vendor added with ID "+v.getV_id();
	}
	
	public List<Users> listUser()
	{
		String query="select u from Users u";
		System.out.println("in admin dao");
		//System.out.println("vType "+vType);
		System.out.println(sf.getCurrentSession().createQuery(query, Users.class).getResultList());
		return sf.getCurrentSession().createQuery(query, Users.class).getResultList();
		
	}

	@Override
	public Users getUserDetails(int u_id) {
		System.out.println( sf.getCurrentSession().get(Users.class, u_id));
		return sf.getCurrentSession().get(Users.class, u_id);
	}

	@Override
	public String updateUser(Users u) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(u);
		return "User Details for ID "+u.getU_id()+"updated...";
	}

	@Override
	public String deleteVehicleDetails(Vehicle v) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().delete(v);
		return "Vehicle details with ID "+v.getV_id()+" deleted...";
	}

	@Override
	public String deleteUserDetails(Users u) {
	// TODO Auto-generated method stub
		sf.getCurrentSession().delete(u);
		return "User details with ID" +u.getU_id()+"deleted...";
	}

	@Override
	public List<Feedback> listFeedback() {
		String query="select f from Feedback f";
		System.out.println("in admin dao");
		//System.out.println("vType "+vType);
		System.out.println(sf.getCurrentSession().createQuery(query, Feedback.class).getResultList());
		return sf.getCurrentSession().createQuery(query, Feedback.class).getResultList();
	}

	@Override
	public List<Orders> listOrder() {
		String query="select o from Orders o";
		System.out.println("in admin dao");
		//System.out.println("vType "+vType);
		System.out.println(sf.getCurrentSession().createQuery(query, Orders.class).getResultList());
		return sf.getCurrentSession().createQuery(query, Orders.class).getResultList();
	}

	@Override
	public Orders getorderDetails(int o_id) {
		// TODO Auto-generated method stub
		System.out.println( sf.getCurrentSession().get(Orders.class, o_id));
		return sf.getCurrentSession().get(Orders.class, o_id);
	}

	@Override
	public String updateOrders(Orders o) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(o);
		return "Vendor Details for ID "+o.getO_id()+" updated...";
	}

	@Override
	public String deleteOrdersDetails(Orders o) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().delete(o);
		return "Order details with ID "+o.getO_id()+" deleted...";
	}
	

	

}

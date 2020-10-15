package com.example.demo.dao;


import java.util.Date;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.pojos.Orders;
import com.example.demo.pojos.Users;
import com.example.demo.pojos.Vehicle;
 
@Repository
public class MainDaoImpl implements MainDao {

	@Autowired
	private SessionFactory sf;
	
	@Override
	public Users validateUser(String email, String pass) {
		String query="select u from Users u where u.u_email=:em and u.u_password=:pwd";
		System.out.println("in login dao");
		System.out.println("email "+email+" pwd "+pass);
		return sf.getCurrentSession().createQuery(query, Users.class).setParameter("em", email).setParameter("pwd", pass).getSingleResult();
	}

	@Override
	public String registerUser(Users u) {
		sf.getCurrentSession().persist(u);
		return "User added with ID "+u.getU_id();
	}

	@Override
	public List<Vehicle> getVehicleList(String vType, String vCategory) {
		System.out.println("vType "+vType+" vCategory "+vCategory);
		String query="select v from Vehicle v where v.v_type=:vt and v.v_category=:vc";
		//String query="select v from Vehicle v";
		System.out.println("in list dao");
		return sf.getCurrentSession().createQuery(query, Vehicle.class).setParameter("vt", vType).setParameter("vc", vCategory).getResultList();
		//List<Vehicle>  vhr= sf.getCurrentSession().createNamedQuery(query,List.class).getResultList();
	   // System.out.println("list"+vhr);
	    //return sf.getCurrentSession().createQuery(query, Vehicle.class).getResultList();
		}

	@Override
	public String checkAvailability(int v_id, Date start_date, Date end_date) {
		List <Orders> dtl=null;
		System.out.println("In checkAvailability dao id="+v_id+"start_date="+start_date+" end_date="+end_date);
		//select * from orders where o_start_time < '2018-12-04' and o_end_time > '2018-12-05';
		
		//String query="select o from Orders o where myVehicle.v_id=:vid and ((o.o_start_time between :sd and :ed)or(o.o_end_time between :sd and :ed))";
		String query="select o from Orders o where myVehicle.v_id=:vid and ((o.o_start_time between :sd and :ed)or(o.o_end_time between :sd and :ed) or (o.o_start_time < :sd1 and o.o_end_time > :ed1))";
	//	select * from orders where o_v_fk=2 and ((o_start_time between '2012-12-4' and '2012-12-6') or (o_end_time between '2012-12-4' and '2012-12-6'));
       dtl = sf.getCurrentSession().createQuery(query, Orders.class).setParameter("vid", v_id).setParameter("sd",start_date).setParameter("ed", end_date).setParameter("sd1",start_date).setParameter("ed1", end_date).getResultList();
       System.out.println("details:"+dtl);
       if(!dtl.isEmpty())
       {
    	   System.out.println("in non empty");
    	   return "Not Available";
       }
       else
       {
    	   System.out.println("in empty");
    	   return "Available";
       }
	}

	@Override
	public Vehicle getVehicleDetails(int v_id) {
		return sf.getCurrentSession().get(Vehicle.class, v_id);
	}
}

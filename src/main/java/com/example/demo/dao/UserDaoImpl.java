package com.example.demo.dao;


import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.pojos.Feedback;
import com.example.demo.pojos.Orders;
import com.example.demo.pojos.Users;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sf;

	@Override
	public int insertOrders(Orders o) {
		sf.getCurrentSession().persist(o);
		return o.getO_id();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Orders> getVehicleList(int u_id) {
		String query="select o from Orders o where myUser.u_id=:uid";
		return sf.getCurrentSession().createQuery(query).setParameter("uid", u_id).getResultList();
	}

	@Override
	public String updateUser(Users u) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().update(u);
		return "Vendor Details for ID "+u.getU_id()+" updated...";
	}

	@Override
	public Feedback getFeedback(int o_id) {
		System.out.println("in getFeedback dao");
        Feedback f=new Feedback();	
        try
        {
		f = sf.getCurrentSession().createQuery("select f from Feedback f where myOrder.o_id=:oid", Feedback.class).setParameter("oid", o_id).getSingleResult();
        }
        catch(NoResultException e)
        {
        	return null;
        }
		return f;
	}

	@Override
	public String insertFeedback(Feedback f) {
		sf.getCurrentSession().saveOrUpdate(f);
		return "Feedback Added with ID "+f.getF_id();
	}
	
}

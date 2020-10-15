package com.example.demo.pojos;



import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
//@Table(schema="vrs")
public class Users {
	
	int u_id;
	String u_fname;
	String u_lname;
	String u_proof;
	String u_email;
	String u_mobile;
	String u_address;
	String u_password;
	String u_mode;
	List<Orders> order=new ArrayList<>();
	
	@Id
	//@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="u_id_seq")
	//@SequenceGenerator(name="u_id_seq",sequenceName="u_id_seq",allocationSize=1)
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	
	@Column(length=10)
	public String getU_fname() {
		return u_fname;
	}
	public void setU_fname(String u_fname) {
		this.u_fname = u_fname;
	}
	
	@Column(length=10)
	public String getU_lname() {
		return u_lname;
	}
	public void setU_lname(String u_lname) {
		this.u_lname = u_lname;
	}
	
	@Column(length=10)
	public String getU_proof() {
		return u_proof;
	}
	public void setU_proof(String u_proof) {
		this.u_proof = u_proof;
	}
	
	@Column(length=50,unique=true,nullable=false)
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	
	@Column(length=10)
	public String getU_mobile() {
		return u_mobile;
	}
	public void setU_mobile(String u_mobile) {
		this.u_mobile = u_mobile;
	}
	
	@Column(length=20)
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	
	@Column(length=10,nullable=false)
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	
	@Column(length=10,nullable=false)
	public String getU_mode() {
		return u_mode;
	}
	public void setU_mode(String u_mode) {
		this.u_mode = u_mode;
	}
	
	@OneToMany(mappedBy="myUser",cascade=CascadeType.ALL)
	public List<Orders> getOrder() {
		return order;
	}
	public void setOrder(List<Orders> order) {
		this.order = order;
	}
	
	

	
	
	
	public Users() {
		// TODO Auto-generated constructor stub
	}
	public Users(String u_fname, String u_lname, String u_proof, String u_email, String u_mobile, String u_address,
			String u_password, String u_mode) {
		super();
		this.u_fname = u_fname;
		this.u_lname = u_lname;
		this.u_proof = u_proof;
		this.u_email = u_email;
		this.u_mobile = u_mobile;
		this.u_address = u_address;
		this.u_password = u_password;
		this.u_mode = u_mode;
	}
	@Override
	public String toString() {
		return "Users [u_id=" + u_id + ", u_fname=" + u_fname + ", u_lname=" + u_lname + ", u_proof=" + u_proof
				+ ", u_email=" + u_email + ", u_mobile=" + u_mobile + ", u_address=" + u_address + ", u_password="
				+ u_password + ", u_mode=" + u_mode + "]";
	}
	
	
	
	
	
	
}

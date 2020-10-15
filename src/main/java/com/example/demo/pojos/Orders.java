package com.example.demo.pojos;


import java.util.Date;
import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
//@Table(schema="vrs")
public class Orders {

	int o_id;
@DateTimeFormat(pattern="yyyy-MM-dd")
	Date o_date;
@DateTimeFormat(pattern="yyyy-MM-dd")
	Date o_start_time;
@DateTimeFormat(pattern="yyyy-MM-dd")
	Date o_end_time;
	
	String o_total_price;
	Users myUser;
	Vehicle myVehicle;
	Feedback myfeedback;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	
	@Temporal(TemporalType.DATE)
	public Date getO_date() {
		return o_date;
	}
	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}
	
	@Temporal(TemporalType.DATE)	
	public Date getO_start_time() {
		return o_start_time;
	}
	public void setO_start_time(Date o_start_time) {
		this.o_start_time = o_start_time;
	}
	
	@Temporal(TemporalType.DATE)
	public Date getO_end_time() {
		return o_end_time;
	}
	public void setO_end_time(Date o_end_time) {
		this.o_end_time = o_end_time;
	}
	
	@Column(length=10)
	public String getO_total_price() {
		return o_total_price;
	}
	public void setO_total_price(String o_total_price) {
		this.o_total_price = o_total_price;
	}
	
	@ManyToOne
	@JoinColumn(name="o_u_fk")
	public Users getMyUser() {
		return myUser;
	}
	public void setMyUser(Users myUser) {
		this.myUser = myUser;
	}
	
	@ManyToOne
	@JoinColumn(name="o_v_fk")
	public Vehicle getMyVehicle() {
		return myVehicle;
	}
	public void setMyVehicle(Vehicle myVehicle) {
		this.myVehicle = myVehicle;
	}
	
	@OneToOne(mappedBy="myOrder",cascade=CascadeType.ALL)
	public Feedback getMyfeedback() {
		return myfeedback;
	}
	public void setMyfeedback(Feedback myfeedback) {
		this.myfeedback = myfeedback;
	}
	
	
	public Orders(Date o_date, Date o_start_time, Date o_end_time, String o_total_price,
			Users myUser, Vehicle myVehicle, Feedback feedback) {
		super();
		this.o_date = o_date;
		this.o_start_time = o_start_time;
		this.o_end_time = o_end_time;
		this.o_total_price = o_total_price;
		this.myUser = myUser;
		this.myVehicle = myVehicle;
		this.myfeedback = feedback;
	}
	
	
	@Override
	public String toString() {
		return "Order [o_id=" + o_id + ", o_date=" + o_date + ", o_start_time=" + o_start_time + ", o_end_time="
				+ o_end_time + ", o_total_price=" + o_total_price + ", myUser=" + myUser
				+ ", myVehicle=" + myVehicle + "]";
	}
	
	
	public Orders() {
		// TODO Auto-generated constructor stub
	}
	
}

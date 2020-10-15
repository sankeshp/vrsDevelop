package com.example.demo.pojos;

import javax.persistence.*;

@Entity
//@Table(schema="vrs")
public class Feedback {
	
	int f_id;
	String f_question1;
	String f_question2;
	String f_question3;
	String f_answer1;
	String f_answer2;	
	String f_answer3;
	String f_rating;
	Orders myOrder;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getF_id() {
		return f_id;
	}
	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
	
	
	@Column(length=50)
	public String getF_question1() {
		return f_question1;
	}
	public void setF_question1(String f_question1) {
		this.f_question1 = f_question1;
	}
	
	@Column(length=50)
	public String getF_question2() {
		return f_question2;
	}
	public void setF_question2(String f_question2) {
		this.f_question2 = f_question2;
	}
	
	@Column(length=50)
	public String getF_question3() {
		return f_question3;
	}
	public void setF_question3(String f_question3) {
		this.f_question3 = f_question3;
	}
	
	@Column(length=50)
	public String getF_answer1() {
		return f_answer1;
	}
	public void setF_answer1(String f_answer1) {
		this.f_answer1 = f_answer1;
	}
	
	@Column(length=50)
	public String getF_answer2() {
		return f_answer2;
	}
	public void setF_answer2(String f_answer2) {
		this.f_answer2 = f_answer2;
	}
	
	@Column(length=50)
	public String getF_answer3() {
		return f_answer3;
	}
	public void setF_answer3(String f_answer3) {
		this.f_answer3 = f_answer3;
	}
	
	@Column(length=10)
	public String getF_rating() {
		return f_rating;
	}
	public void setF_rating(String f_rating) {
		this.f_rating = f_rating;
	}
	
	
	
	@OneToOne
	@JoinColumn(name="f_o_fk")
	//@Column(unique=true)
	public Orders getMyOrder() {
		return myOrder;
	}
	public void setMyOrder(Orders myOrder) {
		this.myOrder = myOrder;
	}
	
	
	
	@Override
	public String toString() {
		return "Feedback [f_id=" + f_id + ", f_question1=" + f_question1 + ", f_question2=" + f_question2
				+ ", f_question3=" + f_question3 + ", f_answer1=" + f_answer1 + ", f_answer2=" + f_answer2
				+ ", f_answer3=" + f_answer3 + ", f_rating=" + f_rating + ", myOrder=" + myOrder + "]";
	}
	
	
	
	public Feedback(int f_id, String f_question1, String f_question2, String f_question3, String f_answer1,
			String f_answer2, String f_answer3, String f_rating, Orders myOrder) {
		super();
		this.f_id = f_id;
		this.f_question1 = f_question1;
		this.f_question2 = f_question2;
		this.f_question3 = f_question3;
		this.f_answer1 = f_answer1;
		this.f_answer2 = f_answer2;
		this.f_answer3 = f_answer3;
		this.f_rating = f_rating;
		this.myOrder = myOrder;
	}
	
	
	public Feedback() {
		// TODO Auto-generated constructor stub
	}
}

package com.cdac.springproject.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "userInfo")
public class User {

	@Column(name = "user_id")
	@GeneratedValue
	private int userId;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "dob")
	private String dateOfBirth;
	@Id
	@Column(name = "email_address")

	private String emailAddress;
	@Column(name = "mobileno")
	private String mobileNo;
	@Column(name = "user_pass")
	private String userPass;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(int userId) {
		super();
		this.userId = userId;
	}

	public User(int userId, String firstName, String lastName, String dateOfBirth, String emailAddress, String mobileNo,
			String userPass) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.emailAddress = emailAddress;
		this.mobileNo = mobileNo;
		this.userPass = userPass;
	}

	public User(String firstName, String lastName, String dateOfBirth, String emailAddress, String mobileNo,
			String userPass) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.emailAddress = emailAddress;
		this.mobileNo = mobileNo;
		this.userPass = userPass;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	@Override
	public String toString() {
		return userId + " " + firstName + " " + lastName + " " + dateOfBirth + " " + emailAddress + " " + mobileNo + " "
				+ userPass;
	}

}
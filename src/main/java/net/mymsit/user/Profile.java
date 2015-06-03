package net.mymsit.user;

import java.util.Calendar;

public class Profile {
	private String username;
	private String name;
	private String dob;
	private String email;
	private String pno;
	private String bGroup;
	private String address;
	public Profile() {
		super();
	}
	public Profile(String username, String name, String dob, String email,
			String pno, String bGroup, String address) {
		super();
		this.username = username;
		this.name = name;
		this.dob = dob;
		this.email = email;
		this.pno = pno;
		this.bGroup = bGroup;
		this.address = address;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the dob
	 */
	public String getDob() {
		return dob;
	}
	/**
	 * @param dob the dob to set
	 */
	public void setDob(String dob) {
		this.dob = dob;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the pno
	 */
	public String getPno() {
		return pno;
	}
	/**
	 * @param pno the pno to set
	 */
	public void setPno(String pno) {
		this.pno = pno;
	}
	/**
	 * @return the bGroup
	 */
	public String getbGroup() {
		return bGroup;
	}
	/**
	 * @param bGroup the bGroup to set
	 */
	public void setbGroup(String bGroup) {
		this.bGroup = bGroup;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	

}

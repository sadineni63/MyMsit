package net.mymsit.user;

import net.mymsit.course.LearningCenter;

public class Login {

	String username;
	String password;
	String role;
	LearningCenter center;

	public Login() {
		// TODO Auto-generated constructor stub
	}
	
	

	/**Prameterized Constructor for Login
	 * @param username
	 * @param password
	 * @param role
	 * @param center
	 */
	public Login(String username, String password, String role,
			LearningCenter center) {
		this.username = username;
		this.password = password;
		this.role = role;
		this.center = center;
	}



	/**
	 * @return center
	 */
	public LearningCenter getCenter() {
		return center;
	}



	/**Sets the center
	 * @param center
	 */
	public void setCenter(LearningCenter center) {
		this.center = center;
	}



	/**
	 * @return username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @return password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @return role
	 */
	public String getRole() {
		return role;
	}

	/**
	 * Sets the username
	 * 
	 * @param username
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * Sets the password
	 * 
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * Sets the role
	 * 
	 * @param role
	 */
	public void setRole(String role) {
		this.role = role;
	}
}

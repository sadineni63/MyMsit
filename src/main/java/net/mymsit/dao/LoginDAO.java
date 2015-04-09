package net.mymsit.dao;

import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import net.mymsit.course.LearningCenter;
import net.mymsit.user.Login;
import net.mymsit.user.LoginMapper;

import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

/**
 * @author SADINENI
 * 
 */
public class LoginDAO {

	DataSource dataSource;
	private NamedParameterJdbcTemplate jdbcTempalte;

	/**
	 * @param dataSource
	 */
	public void setDataSource(DataSource dataSource) {
		this.dataSource=dataSource;
		jdbcTempalte = new NamedParameterJdbcTemplate(dataSource);
	}

	/**Method to create new login details
	 * @param username
	 * @param password
	 * @param role
	 */
	@SuppressWarnings("unchecked")
	public int createLoginDetails(String username, String password, String role, LearningCenter center) throws DataAccessException {
		String SQL = "INSERT INTO logins(username,password,role,center) VALUES (:username, :password, :role,:center)";
		Map<String, String> namedParameters = new HashMap<String, String>();
		namedParameters.put("username", username);
		namedParameters.put("password", password);
		namedParameters.put("role", role);
		namedParameters.put("center", center.toString());
		return jdbcTempalte.update(SQL, namedParameters);
	}

	/**Method to create new login details
	 * @param loginDetails
	 */
	public int createLoginDetails(Login loginDetails) throws DataAccessException {
		String SQL = "INSERT INTO logins VALUES (:username, :password, :role,:center)";
		Map<String, String> namedParameters = new HashMap<String, String>();
		namedParameters.put("username", loginDetails.getUsername());
		namedParameters.put("password", loginDetails.getPassword());
		namedParameters.put("role", loginDetails.getRole());
		namedParameters.put("center", loginDetails.getCenter().toString());
		return jdbcTempalte.update(SQL, namedParameters);
	}

	/**Method to get login details of existing user.
	 * @param username
	 * @return Login details that matches with given username
	 */
	public Login getLoginDetails(String username)throws DataAccessException {
		try
		{
		String query = "select * from logins where username=:username";
		SqlParameterSource parameterSourse = new MapSqlParameterSource(
				"username", username);
		return (Login) jdbcTempalte.queryForObject(query, parameterSourse,
				new LoginMapper());
		}
		catch(EmptyResultDataAccessException e)
		{
			return null;
		}
	}

	/**Method to update existing login details that matches with given username
	 * @param newLoginDetails
	 * @throws NoSuchUserException 
	 */
	public void updateLoginDetials(Login newLoginDetails) throws NoSuchUserException,DataAccessException {
		String SQL = "UPDATE logins SET password=:password, role=:role WHERE username = :username";
		Map<String, Object> namedParameters = new HashMap<String, Object>();
		namedParameters.put("password", newLoginDetails.getPassword());
		namedParameters.put("role", newLoginDetails.getRole());
		namedParameters.put("username", newLoginDetails.getUsername());
		int count=jdbcTempalte.update(SQL, namedParameters);
		if(count==0)
			throw new NoSuchUserException("No user available with given username");
		else
			System.out.println("Login Details are updated Successfully");
	}

	/** Method to delete login details from database that matches with given username
	 * @param username
	 * @throws NoSuchUserException,DataAccessException 
	 */
	public void deleteLoginDetails(String username) throws NoSuchUserException,DataAccessException {
		String SQL = "DELETE FROM logins WHERE username = :username";
		SqlParameterSource namedParameters = new MapSqlParameterSource("empid",
				username);
		int count=jdbcTempalte.update(SQL, namedParameters);
		if(count==0)
			throw new NoSuchUserException("No user available with given username");
		else
		System.out.println("Login Details are deleted Successfully");
	}

}

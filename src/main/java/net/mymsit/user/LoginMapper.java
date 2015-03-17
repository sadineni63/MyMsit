package net.mymsit.user;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class LoginMapper implements RowMapper<Login>{
	
	public Login mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Login loginDetails=new Login();
		loginDetails.setUsername(rs.getString(1));
		loginDetails.setPassword(rs.getString(2));
		loginDetails.setRole(rs.getString(3));
		return loginDetails;
	}	

}

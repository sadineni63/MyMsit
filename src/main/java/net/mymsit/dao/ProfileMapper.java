package net.mymsit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import net.mymsit.user.Login;
import net.mymsit.user.Profile;

import org.springframework.jdbc.core.RowMapper;

public class ProfileMapper implements RowMapper<Profile> {

	public Profile mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Profile profileDetails=new Profile();
		SimpleDateFormat format=new SimpleDateFormat("dd-MM-yyyy");
		profileDetails.setUsername(rs.getString(1));
		profileDetails.setName(rs.getString(2));
		profileDetails.setDob(format.format(rs.getDate(3)).toString());
		profileDetails.setEmail(rs.getString(4));
		profileDetails.setPno(rs.getString(5));
		profileDetails.setbGroup(rs.getString(6));
		profileDetails.setAddress(rs.getString(7));
		return profileDetails;
	}	

}

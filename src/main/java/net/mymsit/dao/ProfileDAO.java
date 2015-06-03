package net.mymsit.dao;

import javax.sql.DataSource;

import net.mymsit.user.Profile;

import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import java.util.List;


public class ProfileDAO {
	DataSource dataSource;
	private NamedParameterJdbcTemplate jdbcTempalte;
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		jdbcTempalte = new NamedParameterJdbcTemplate(dataSource);
	}
	
	public Profile getProfileDetails(String username)
	{
		return null;
		
	}
	
	public List<Profile> getAllStudentProfiles() {
		return null;
	}
	

}

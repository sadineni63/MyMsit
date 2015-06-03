package net.mymsit.dao;

import javax.sql.DataSource;

import net.mymsit.user.Login;
import net.mymsit.user.LoginMapper;
import net.mymsit.user.Profile;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

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
		try {
			String query = "select * from profile where username=:username";
			SqlParameterSource parameterSourse = new MapSqlParameterSource(
					"username", username);
			return (Profile) jdbcTempalte.queryForObject(query, parameterSourse,
					new ProfileMapper());
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	public List<Profile> getAllStudentProfiles() {
		return null;
	}
	

}

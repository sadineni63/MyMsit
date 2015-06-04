package net.mymsit.dao;

import javax.sql.DataSource;

import net.mymsit.user.Login;
import net.mymsit.user.LoginMapper;
import net.mymsit.user.Profile;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class ProfileDAO {
	DataSource dataSource;
	private NamedParameterJdbcTemplate jdbcTempalte;
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		jdbcTempalte = new NamedParameterJdbcTemplate(dataSource);
	}
	
	public int createProfileDetails(Profile profile)
	{
		String SQL = "INSERT INTO profile VALUES (:username,:name,:dob,:email,:pno,:blood_group,:address)";
		Map<String, String> namedParameters = new HashMap<String, String>();
		namedParameters.put("username", profile.getUsername());
		namedParameters.put("name", profile.getName());
		namedParameters.put("dob", profile.getDob());
		namedParameters.put("email", profile.getEmail());
		namedParameters.put("pno", profile.getPno());
		namedParameters.put("blood_group", profile.getbGroup());
		namedParameters.put("address", profile.getAddress());
		return jdbcTempalte.update(SQL, namedParameters);
	}
	
	public int updateProfileDetails(Profile profile)
	{
		String SQL = "update profile set name=:name,dob=:dob,email=:email,pno=:pno,blood_group=:blood_group,address=:address where username=:username";
		Map<String, String> namedParameters = new HashMap<String, String>();
		namedParameters.put("username", profile.getUsername());
		namedParameters.put("name", profile.getName());
		namedParameters.put("dob", profile.getDob());
		namedParameters.put("email", profile.getEmail());
		namedParameters.put("pno", profile.getPno());
		namedParameters.put("blood_group", profile.getbGroup());
		namedParameters.put("address", profile.getAddress());
		return jdbcTempalte.update(SQL, namedParameters);
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
		try {
			String query = "select * from profile as prf,logins as log where prf.username=log.username and log.role='Student'";
			return (List<Profile>) jdbcTempalte.query(query,
					new ProfileMapper());
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	public List<Profile> getAllMentorProfiles() {
		try {
			String query = "select * from profile as prf,logins as log where prf.username=log.username and log.role='Mentor'";
			return (List<Profile>) jdbcTempalte.query(query,
					new ProfileMapper());
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	

}

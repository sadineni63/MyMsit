package net.mymsit.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import net.mymsit.course.Course;
import net.mymsit.course.CourseMapper;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;


/**
 * @author SADINENI
 *
 */
public class CourseDAO {
	
	DataSource dataSource;
	private NamedParameterJdbcTemplate jdbcTempalte;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource=dataSource;
		jdbcTempalte = new NamedParameterJdbcTemplate(dataSource);
	}
	
	
	public int createCourseDetails(String cid,String cname,String sdate, String edate)
	{
		String SQL = "INSERT INTO courses(c_id,c_name,s_date,e_date) VALUES (:c_id, :c_name, :s_date,:e_date)";
		Map<String, String> namedParameters = new HashMap<String, String>();
		namedParameters.put("c_id",cid);
		namedParameters.put("c_name",cname);
		namedParameters.put("s_date",sdate.toString());
		namedParameters.put("e_date",edate.toString());
		return jdbcTempalte.update(SQL, namedParameters);
	}
	
	public List<Course> getCourseList()
	{
		String SQL="select * from courses";
		return new JdbcTemplate(dataSource).query(SQL,new CourseMapper());
	}

}

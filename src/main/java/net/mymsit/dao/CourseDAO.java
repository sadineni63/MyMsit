package net.mymsit.dao;

import java.util.*;

import javax.sql.DataSource;

import net.mymsit.course.*;

import org.hibernate.dialect.MySQLInnoDBDialect;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

/**
 * @author SADINENI
 */
public class CourseDAO {
	DataSource dataSource;
	private NamedParameterJdbcTemplate jdbcTempalte;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		jdbcTempalte = new NamedParameterJdbcTemplate(dataSource);
	}

	public int createCourseDetails(String cid, String cname, String sdate,
			String edate) {
		try
		{
		String SQL = "INSERT INTO courses(c_id,c_name,s_date,e_date) VALUES (:c_id, :c_name, :s_date,:e_date)";
		Map<String, String> namedParameters = new HashMap<String, String>();
		namedParameters.put("c_id", cid);
		namedParameters.put("c_name", cname);
		namedParameters.put("s_date", sdate.toString());
		namedParameters.put("e_date", edate.toString());
		return jdbcTempalte.update(SQL, namedParameters);
		}
		catch(DuplicateKeyException e)
		{
			return 0;
		}
	}

	public List<Course> getCourseList() {
		String SQL = "select * from courses";
		return new JdbcTemplate(dataSource).query(SQL, new CourseMapper());
	}

	public int createWeeekDetails(String cid, int week, String sDate,
			String eDate) {
		// TODO Auto-generated method stub
		String SQL = "INSERT INTO course_week_duration(c_id,c_name,s_date,e_date) VALUES (:c_id, :week, :sdate,:edate)";
		Map<String, String> namedParameters = new HashMap<String, String>();
		namedParameters.put("c_id", cid);
		namedParameters.put("week", String.valueOf(week));
		namedParameters.put("sdate", sDate);
		namedParameters.put("edate", eDate);
		return jdbcTempalte.update(SQL, namedParameters);
	}
}
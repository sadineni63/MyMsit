package net.mymsit.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
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

	public int createCourseDetails(String cid, String cname, int now,
			String sdate, String edate) throws ParseException {
		try {
			String SQL = "INSERT INTO courses(c_id,c_name,now,s_date,e_date) VALUES (:c_id, :c_name,:now, :s_date,:e_date)";
			Map<String, Object> namedParameters = new HashMap<String, Object>();
			namedParameters.put("c_id", cid);
			namedParameters.put("c_name", cname);
			namedParameters.put("now", now);
			namedParameters.put("s_date", sdate.toString());
			namedParameters.put("e_date", edate.toString());
			if (jdbcTempalte.update(SQL, namedParameters) > 0) {
				String dates[] = sdate.split("-");
				int year = Integer.parseInt(dates[0]);
				int month = Integer.parseInt(dates[1]);
				int date = Integer.parseInt(dates[2]);
				Calendar calendar = Calendar.getInstance();
				calendar.set(Calendar.YEAR, year);
				calendar.set(Calendar.MONTH, month - 1);
				calendar.set(Calendar.DATE, date);
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				SQL="INSERT INTO course_week_duration(c_id,week,sdate,edate) VALUES (:c_id, :week,:sdate,:edate)";
				for (int i = 1; i <= now; i++) {
					namedParameters = new HashMap<String, Object>();
					String start = format.format(calendar.getTime()).toString();
					calendar.add(Calendar.DATE, 5);
					String end = format.format(calendar.getTime()).toString();
					calendar.add(Calendar.DATE, 2);
					namedParameters.put("c_id", cid);
					namedParameters.put("week", i);
					namedParameters.put("sdate", start);
					namedParameters.put("edate", end);
					jdbcTempalte.update(SQL, namedParameters);
				}
			}
		} catch (DuplicateKeyException e) {
			return 0;
		}
		return 1;
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

	public List<CourseWeek> getWeekDurations(String cid) {
		// TODO Auto-generated method stub
		String SQL = "select * from course_week_duration where c_id="+cid;
		return new JdbcTemplate(dataSource).query(SQL, new CourseWeekMapper());
	}
}
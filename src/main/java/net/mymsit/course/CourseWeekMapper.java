package net.mymsit.course;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import org.springframework.jdbc.core.RowMapper;

public class CourseWeekMapper implements RowMapper<CourseWeek>{
	
	@Override
	public CourseWeek mapRow(ResultSet row, int rNum) throws SQLException {
		// TODO Auto-generated method stub
		CourseWeek c=new CourseWeek();
		SimpleDateFormat format=new SimpleDateFormat("dd-MM-yyyy");
		c.setCid(row.getString(1));
		c.setWeek(Integer.parseInt(row.getString(2)));
		c.setsDate(format.format(row.getDate(3)).toString());
		c.seteDate(format.format(row.getDate(4)).toString());
		return c;
	}

}

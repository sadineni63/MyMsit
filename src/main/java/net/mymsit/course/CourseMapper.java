package net.mymsit.course;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import org.springframework.jdbc.core.RowMapper;

public class CourseMapper implements RowMapper<Course> {

	@Override
	public Course mapRow(ResultSet row, int rNum) throws SQLException {
		// TODO Auto-generated method stub
		Course c=new Course();
		SimpleDateFormat format=new SimpleDateFormat("dd-MM-yyyy");
		c.setCourseId(row.getString(1));
		c.setCourse_Name(row.getString(2));
		c.setsDate(format.format(row.getDate(3)).toString());
		c.seteDate(format.format(row.getDate(4)).toString());
		return c;
	}

}

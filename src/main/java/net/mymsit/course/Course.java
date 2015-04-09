package net.mymsit.course;

public class Course {
	String courseId;
	String course_Name;
	String sDate;
	String eDate;
	
	public Course() {
		// TODO Auto-generated constructor stub
	}
	
	

	public Course(String courseId, String course_Name, String sDate,
			String eDate) {
		this.courseId = courseId;
		this.course_Name = course_Name;
		this.sDate = sDate;
		this.eDate = eDate;
	}



	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getCourse_Name() {
		return course_Name;
	}

	public void setCourse_Name(String course_Name) {
		this.course_Name = course_Name;
	}

	public String getsDate() {
		return sDate;
	}

	public void setsDate(String sDate) {
		this.sDate = sDate;
	}

	public String geteDate() {
		return eDate;
	}

	public void seteDate(String eDate) {
		this.eDate = eDate;
	}
	
}


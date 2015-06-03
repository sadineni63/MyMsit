package net.mymsit.course;

public class Course {
	private String courseId;
	private String course_Name;
	private int now;
	private String sDate;
	private String eDate;
	
	public Course() {
		// TODO Auto-generated constructor stub
	}
	
	

	public Course(String courseId, String course_Name,int now, String sDate,
			String eDate) {
		this.courseId = courseId;
		this.course_Name = course_Name;
		this.now=now;
		this.sDate = sDate;
		this.eDate = eDate;
	}



	/**
	 * @return the courseId
	 */
	public String getCourseId() {
		return courseId;
	}



	/**
	 * @param courseId the courseId to set
	 */
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}



	/**
	 * @return the course_Name
	 */
	public String getCourse_Name() {
		return course_Name;
	}



	/**
	 * @param course_Name the course_Name to set
	 */
	public void setCourse_Name(String course_Name) {
		this.course_Name = course_Name;
	}



	/**
	 * @return the now
	 */
	public int getNow() {
		return now;
	}



	/**
	 * @param now the now to set
	 */
	public void setNow(int now) {
		this.now = now;
	}



	/**
	 * @return the sDate
	 */
	public String getsDate() {
		return sDate;
	}



	/**
	 * @param sDate the sDate to set
	 */
	public void setsDate(String sDate) {
		this.sDate = sDate;
	}



	/**
	 * @return the eDate
	 */
	public String geteDate() {
		return eDate;
	}



	/**
	 * @param eDate the eDate to set
	 */
	public void seteDate(String eDate) {
		this.eDate = eDate;
	}

	
}


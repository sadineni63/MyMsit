package net.mymsit.course;

import java.util.List;

public class CourseWeek {
	private String cid;
	private int week;
	private String sDate;
	private String eDate;
	private List<Module> modules;
	public CourseWeek() {
		// TODO Auto-generated constructor stub
	}
	public CourseWeek(String cid, int week, String sDate, String eDate) {
		this.cid = cid;
		this.week = week;
		this.sDate = sDate;
		this.eDate = eDate;
	}
	/**
	 * @return the cid
	 */
	public String getCid() {
		return cid;
	}
	/**
	 * @param cid the cid to set
	 */
	public void setCid(String cid) {
		this.cid = cid;
	}
	/**
	 * @return the week
	 */
	public int getWeek() {
		return week;
	}
	/**
	 * @param week the week to set
	 */
	public void setWeek(int week) {
		this.week = week;
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
	/**
	 * @return the modules
	 */
	public List<Module> getModules() {
		return modules;
	}
	/**
	 * @param modules the modules to set
	 */
	public void setModules(List<Module> modules) {
		this.modules = modules;
	}
	
}

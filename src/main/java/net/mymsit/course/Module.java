package net.mymsit.course;

public class Module {
	private String cid;
	private int week;
	private int module;
	private String mName;
	private String date;
	private String day;
	private int not;
	private String session;
	private String deadline;

	public Module() {
		super();
	}

	/**
	 * @param cid
	 * @param week
	 * @param module
	 * @param mName
	 * @param date
	 * @param day
	 * @param not
	 * @param session
	 * @param deadline
	 */
	public Module(String cid, int week, int module, String mName,
			String date, String day, int not, String session, String deadline) {
		super();
		this.cid = cid;
		this.week = week;
		this.module = module;
		this.mName = mName;
		this.date = date;
		this.day = day;
		this.not = not;
		this.session = session;
		this.deadline = deadline;
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
	 * @return the module
	 */
	public int getModule() {
		return module;
	}

	/**
	 * @param module the module to set
	 */
	public void setModule(int module) {
		this.module = module;
	}

	/**
	 * @return the mName
	 */
	public String getmName() {
		return mName;
	}

	/**
	 * @param mName the mName to set
	 */
	public void setmName(String mName) {
		this.mName = mName;
	}

	/**
	 * @return the date
	 */
	public String getDate() {
		return date;
	}

	/**
	 * @param date the date to set
	 */
	public void setDate(String date) {
		this.date = date;
	}

	/**
	 * @return the day
	 */
	public String getDay() {
		return day;
	}

	/**
	 * @param day the day to set
	 */
	public void setDay(String day) {
		this.day = day;
	}

	/**
	 * @return the not
	 */
	public int getNot() {
		return not;
	}

	/**
	 * @param not the not to set
	 */
	public void setNot(int not) {
		this.not = not;
	}

	/**
	 * @return the session
	 */
	public String getSession() {
		return session;
	}

	/**
	 * @param session the session to set
	 */
	public void setSession(String session) {
		this.session = session;
	}

	/**
	 * @return the deadline
	 */
	public String getDeadline() {
		return deadline;
	}

	/**
	 * @param deadline the deadline to set
	 */
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}


}

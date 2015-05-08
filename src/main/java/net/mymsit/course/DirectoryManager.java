package net.mymsit.course;

import java.io.File;

public class DirectoryManager {
	String rootDirectory;
	
	public DirectoryManager() {
		// TODO Auto-generated constructor stub
		rootDirectory=CoursesRootDirectory.URI;
	}
	
	public void createCourseDirectory(String cid) {
		System.out.println(System.getProperty("user.dir"));
		System.out.println(new File(rootDirectory+"\\"+cid));
		System.out.println(new File(rootDirectory+"\\"+cid).mkdirs());
	}
	
	public void createWeekDirectory(String cid,int week) {
		new File(rootDirectory+"//"+cid+"//Week"+week).mkdirs();
	}
	public void createModuleDirectory(String cid,int week,int module) {
		new File(rootDirectory+"//"+cid+"//Week"+week+"//Module"+module).mkdirs();
	}
	
	public static void main(String[] args) {
	}
}

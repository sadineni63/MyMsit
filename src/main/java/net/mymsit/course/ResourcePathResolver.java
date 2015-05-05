package net.mymsit.course;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.springframework.core.io.ClassPathResource;

import com.fasterxml.jackson.core.format.InputAccessor;

public class ResourcePathResolver {
	String rootDirectory;
	String cid;
	int week;
	int module;
	String resource;
	public ResourcePathResolver() {
		// TODO Auto-generated constructor stub
		rootDirectory="/"+CoursesRootDirectory.URI;
	}
	
	public ResourcePathResolver(String cid) {
		// TODO Auto-generated constructor stub
		rootDirectory="/"+CoursesRootDirectory.URI;
		this.cid=cid;
	}
	
	public ResourcePathResolver(String cid,int week) {
		// TODO Auto-generated constructor stub
		rootDirectory="/"+CoursesRootDirectory.URI;
		this.cid=cid;
		this.week=week;
	}
	
	public ResourcePathResolver(String cid,int week,int module) {
		// TODO Auto-generated constructor stub
		rootDirectory="/"+CoursesRootDirectory.URI;
		this.cid=cid;
		this.week=week;
		this.module=module;
	}
	
	public ResourcePathResolver(String cid,int week,int module,String resource) {
		// TODO Auto-generated constructor stub
		rootDirectory="/"+CoursesRootDirectory.URI;
		this.cid=cid;
		this.week=week;
		this.module=module;
		this.resource=resource;
	}

	/**
	 * @return the rootDirectory
	 */
	public String getRootDirectory() {
		return rootDirectory;
	}

	/**
	 * @param rootDirectory the rootDirectory to set
	 */
	public void setRootDirectory(String rootDirectory) {
		this.rootDirectory = rootDirectory;
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
	 * @return the resource
	 */
	public String getResource() {
		return resource;
	}

	/**
	 * @param resource the resource to set
	 */
	public void setResource(String resource) {
		this.resource = resource;
	}
	
	public String getCoursePath()
	{
		return rootDirectory+cid;
	}
	
	public String getWeekPath()
	{
		return getCoursePath()+"Week"+week;
	}
	
	public String getModulePath()
	{
		return getCoursePath()+"Module"+module;
	}
	
	public String resourcePath()
	{
		return getModulePath()+resource;
	}
	
	public static void main(String[] args) throws IOException {
		File file = new File(CoursesRootDirectory.URI+"/mpleDirectory");
		if(file.mkdirs())
			System.out.println("Directory Created");
		else
			System.out.println("Directory is not Created");
	}
}

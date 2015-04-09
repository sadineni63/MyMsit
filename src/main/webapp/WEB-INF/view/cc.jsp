<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           <%@ page import="java.util.*"%>
           <%@ page import="net.mymsit.course.Course"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty courses}">
	
	<% List<Course> courses=(ArrayList<Course>)request.getAttribute("courses");
		for(int i=0;i<courses.size();i++)
		{
			Course c=courses.get(i);
			if(i%4==1)
			{
			}
			%>
			<tr>
				<td><%=c.getCourseId()%></td>
				<td><%=c.getCourse_Name()%></td>
				<td><%=c.getsDate()%></td>
				<td><%=c.geteDate()%></td>
			</tr>
			<br>
			<%
			}
			%>
	</c:if>
</body>
</html>
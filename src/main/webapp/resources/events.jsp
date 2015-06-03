<%@ page contentType="application/json" %>
<%= getEvents(request) %>
 
<%@ page import="com.dhtmlx.planner.*,com.dhtmlx.demo.*,javax.servlet.http.HttpServletRequest" %>
<%!
           	String getEvents(HttpServletRequest request) throws Exception {
                 EventsManager evs = new EventsManager(request);
                 return evs.run();
           	}
%>

<html>
<head>
<%@ page import="java.util.Calendar" %>
<%@ page import="calendar.Month" %>

  <title>devdaily.com calendar</title>
  <link rel="StyleSheet" href="/blog/calendar.css" type="text/css" media="screen" />
</head>

<body id="regular_page">

<%

Calendar theCal = Calendar.getInstance();
 int currentYearInt  = theCal.get(Calendar.YEAR);
 int currentMonthInt = theCal.get(Calendar.MONTH);
 int currentDayInt   = theCal.get(Calendar.DATE);
 String currentYearString  = new Integer(currentYearInt).toString();
 String currentMonthString = new Integer(currentMonthInt).toString();

 // get parameters the user might have sent by clicking fwd or back
 String newMonth = request.getParameter("month");
 String newYear  = request.getParameter("year");

 // reset the month and year if necessary
 if ( newMonth != null )
 {
   currentMonthString = newMonth;
 }
 if ( newYear != null )
 {
   currentYearString = newYear;
 }

 // determine the next/previous month and year
 int intMonth = new Integer(currentMonthString).intValue();
 int intYear  = new Integer(currentYearString).intValue();

 // determine the name of the current intMonth
 String monthNames[] = {"January",
                        "February",
                        "March",
                        "April",
                        "May",
                        "June",
                        "July",
                        "August",
                        "September",
                        "October",
                        "November",
                        "December" };

 String monthName = monthNames[intMonth];

 // determine the next/previous month and year.
 // this is really only needed by calendar.jsp, but i moved it here
 // to simplify calendar.jsp.
 int nextYear = intYear;
 int prevYear = intYear;
 int prevMonth = intMonth-1;
 if ( prevMonth==-1 )
 {
   prevMonth=11;
   prevYear--;
 }
 int nextMonth = intMonth+1;
 if ( nextMonth==12 )
 {
   nextMonth = 0;
   nextYear++;
 }

%>
<div id="calendar_main_div">
<table border="1" cellspacing="0" cellpadding="4" id="calendar_table">
  <tr>
    <td width="100%" colspan="7" class="month_year_header">
      <%=monthName%>, <%=intYear%>
    </td>
  </tr>
  <tr class="week_header_row">
    <th width="14%" class="th_day_cell day">Sun</th>
    <th width="14%" class="th_day_cell day">Mon</th>
    <th width="14%" class="th_day_cell day">Tue</th>
    <th width="14%" class="th_day_cell day">Wed</th>
    <th width="14%" class="th_day_cell day">Thu</th>
    <th width="15%" class="th_day_cell day">Fri</th>
    <th width="15%" class="th_day_cell day">Sat</th>
  </tr>
<%
{
  Month aMonth = Month.getMonth( Integer.parseInt(currentMonthString), Integer.parseInt(currentYearString) );
  int [][] days = aMonth.getDays();
  for( int i=0; i<aMonth.getNumberOfWeeks(); i++ )
  {
    %><tr class="week_data_row"><%
    for( int j=0; j<7; j++ )
    {
      if( days[i][j] == 0 )
      {
        %><td class="empty_day_cell">&nbsp;</td><%
      }
      else
      {
        // this is "today"
        if( currentDayInt == days[i][j] && currentMonthInt == aMonth.getMonth() && currentYearInt == aMonth.getYear() )
        {
          %><td class="today_cell"><%=days[i][j]%></td><%
        }
        else
        {
          %><td class="day_cell"><%=days[i][j]%></td><%
        }
      } // end outer if
    } // end for
    %>
    </tr>
  <%}
}
%>
</table>

<%-- end of "calendar_div" --%>
</div>

<!-- navigation links -->
<%-- sorry, i don't know how to get this look without a table --%>
<table id="calendar_nav_table" border="0">
  <tr>
    <td id="prev_link">
      <form method="post">
        <input type="submit" name="PREV" value=" << ">
        <input type="hidden" name="month" value="<%=prevMonth%>">
        <input type="hidden" name="year" value="<%=prevYear%>">
      </form>
    </td>
    <td id="link_to_month_view">
      <form action="calendarMonthPrintView.jsp" method="post">
        <input type="submit" value="  Full-Screen Print View  " class="submit_button">
        <input type="hidden" name="month" value="<%=intMonth%>">
        <input type="hidden" name="year"  value="<%=intYear%>">
      </form>
    </td>
    <td id="next_link">
      <form method="post">
        <input type="submit" name="NEXT" value=" >> ">
        <input type="hidden" name="month" value="<%=nextMonth%>">
        <input type="hidden" name="year" value="<%=nextYear%>">
      </form>
    </td>
  </tr>
</table>
  <!-- navigation links end -->

</body>
</html>


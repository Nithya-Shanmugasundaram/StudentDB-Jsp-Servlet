<%@ page language="java" contentType="text/html; "%>
    <%@page import="Reevaluation.Reevaluate,java.sql.*" %>
<html>
<head>
<title>Mark updation</title>
<style>
h4
{
  margin-top: 50px;
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size: 40px; 
  color: #ac2d51;
}
#link
{
	bottom: 10px;
	text-align: center;
	font-size: 20px;
}
a
{
    color: #ac2d51;
}
body
{
    background-color: #97f9f1b5;
}
</style>
</head>
<body>

<%
	int roll_no=Integer.parseInt(request.getParameter("roll_no"));
	int sem_no=Integer.parseInt(request.getParameter("sem_no"));
	String subject=request.getParameter("sub");
	double mark =Double.parseDouble(request.getParameter("mark"));
	Reevaluate obj = new Reevaluate();
	int flag=0;
	try
	{
		flag=obj.change_mark(roll_no,sem_no,subject,mark);
	}
	catch(SQLException e)
	{
		out.println(e);
	}
	String result;
	if(flag>1)
	{
		result="The marks have been updated and the Cgpa and Sgpa have been calculated accordingly";
	}
	else
	{
		result="Failed to Reevaluate";
	}
	%>
	<h4>You have Reevaluated</h4>
	<p style="text-align: center;font-size: 1.5em"><%=result %></p>
<p id="link"><a href="reevaluate.jsp" >Click here to go back and Reevaluate</a></p>
</body>
</html>
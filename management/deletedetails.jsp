<%@ page language="java" contentType="text/html;"%>
<%@ page import="java.sql.*" %>
<%@ page import="StudentDB.Delete" %>
<html>
<head>
<title>Deletion update</title>
<style>
h1
{
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size:45; 
  color: #79272e;                             
}
p
{
	font-size: 1.5em;
	text-align: center;
	font-family: italics;
}
ul
{ 
  list-style-type: square;
  font-size:20; 
  text-align: center;
}
li{
    display: inline;
}
</style>
</head>
<body>
<%
	if(session.getAttribute("mgmtname")==null)
	{
		response.sendRedirect("index2.jsp");
	}
%>
<%
	int roll_no=Integer.parseInt(request.getParameter("roll_no"));
	Delete obj= new Delete();
	String result;
	int flag=0;
	try
	{
		flag=obj.delete(roll_no);
	}
	catch(SQLException e)
	{
		out.println(e);
	}
	if(flag>0)
	{
		result="Data is deleted successfully";
	}
	else
	{
		result="Data is not deleted";
	}
%>
<h1>DataBase is Updated</h1>
<p><%=result %></p>
<ul>
    <li ><a href="delete.jsp" >&nbsp;&nbsp;Delete Student Details and Marks</a></li>
    <li><a href="management.jsp">&nbsp;&nbsp;Management Home Page</a></li>
   </ul>
</body>
</html>
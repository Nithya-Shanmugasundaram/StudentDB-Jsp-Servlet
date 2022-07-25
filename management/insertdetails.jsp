<%@ page language="java" contentType="text/html; "%>
<%@ page import="java.sql.*" %>
 <%@page import="StudentDB.Details" %>
<!DOCTYPE html>
<html>
<head>
<title>Insertion updation</title>
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
body
{
	background-color: #ffebcecd;
}
</style>
</head>
<body>
<%
int flag=0;
String name=request.getParameter("name");
String dept=request.getParameter("dept");
String mailid=request.getParameter("mailid");
int roll_no=Integer.parseInt(request.getParameter("roll_no"));
int year=Integer.parseInt(request.getParameter("year"));
double attper = Double.parseDouble(request.getParameter("attper"));
String result,result1;
Details obj=new Details();
try 
{
	flag=obj.basic_details(name,dept,roll_no,mailid,year,attper);
} 
catch (SQLException e) 
{
	out.println(e);
}
if(flag>0)
{
	result="Data is inserted successfully";
}
else
{
	result="Data is not inserted";
}

%>
<h1>DataBase is Updated</h1>
<p><%=result %></p>
<ul>
    <li ><a href="insert.jsp" >&nbsp;&nbsp;Insert Student Details and Marks</a></li>
    <li><a href="management.jsp">&nbsp;&nbsp;Management Home Page</a></li>
   </ul>
</body>
</html>
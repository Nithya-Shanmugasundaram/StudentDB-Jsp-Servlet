<%@ page language="java" contentType="text/html; "%>
<%@ page import="java.sql.*" %>
<%@page import="StudentDB.Details" %>
<html>
<head>
<title>Insertion update</title>
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
int roll_no=Integer.parseInt(request.getParameter("roll_no"));
int sem_no=Integer.parseInt(request.getParameter("sem_no"));
double marks[]=new double[6];
String result;
int flag=0;
for(int i=1;i<=6;i++)
{
	marks[i-1]=Double.parseDouble(request.getParameter("s"+i));
}
Details obj = new Details();
try
{
	flag=obj.mark_details(roll_no,sem_no,marks);
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
    <li><a href="management.jsp">&nbsp;&nbsp;Management Home Page</a>
   </ul>
</body>
</html>
<%@ page language="java" contentType="text/html; "%>
<%@ page import="java.sql.*,StudentDB.Update"%>
<!DOCTYPE html>
<html>
<head> 
<title>Updation update</title>
</head>
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
  color: #ac2d51;
}
li{
    display: inline;
}
body
{
	background-color: #e6ff9bb5;
}
</style>
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
Update obj=new Update();
try 
{
	flag=obj.update(roll_no,name,dept,mailid,year,attper);
} 
catch (Exception e) 
{
	out.println(e);
}
if(flag>0)
{
	result="Data is Updated successfully";
}
else
{
	result="Data is not Updated";
}

%>
<h1>DataBase is Updated</h1>
<p><%=result %></p>
<ul>
    <li ><a href="/test_auth/index.jsp" >Login Page&nbsp;&nbsp;</a></li>
    <li ><a href="update.jsp" >&nbsp;&nbsp;Update Student Details</a></li>
    <li><a href="management.jsp">&nbsp;&nbsp;Management Home Page</a></li>
   </ul>
</body>
</body>
</html>
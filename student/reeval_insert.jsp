<%@ page language="java" contentType="text/html; "%>
<%@ page import="java.sql.*" %>
<%@ page import="Reevaluation.Pending_cases" %>
 <%@page import="javax.mail.*,Mail_notify.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>reevaluation_updation</title>
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
String mailid=request.getParameter("mailid");
int roll_no=Integer.parseInt(request.getParameter("roll_no"));
int sem_no=Integer.parseInt(request.getParameter("sem_no"));
String subject=request.getParameter("sub");
Send_mail sm= new Send_mail();
boolean st = sm.send_mail(roll_no,subject,sem_no, mailid);
String result,result1;
if(st==true)
{
	result="You have applied for revaluvation check you mail for further conformation";
}
else
{
	result="Mail conformation failed";
}
Pending_cases obj= new Pending_cases();
int n=obj.add_into(roll_no,subject,sem_no);
if(n>0)
{
	result1="Inserted for pending cases successfully";
}
else
{
	result1="Failed to apply for Reevaluation";
}
%>
<h1>Thank you for applying for reevaluation</h1>
<p><%=result %></p>
<p><%=result1 %></p>
<ul>
    <li ><a href="/test_auth/index.jsp" >Login Page&nbsp;&nbsp;</a></li>
    <li ><a href="student.jsp" >&nbsp;&nbsp;Reevaluation Page</a></li>
   </ul>
</body>
</html>
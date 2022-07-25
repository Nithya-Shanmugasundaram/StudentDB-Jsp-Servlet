<%@ page language="java" contentType="text/html;"%>
<%@ page import="StudentDB.Read_numbers,StudentDB.Display,java.sql.*" %>
<html>
<head>
<title>Student Data</title>
<style>
h4
{
  margin-top: 50px;
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size: 40px;
  color: #ac2d51;
}
#stu
{
    float: left;
    width: 30%;
    height: 350px;
    border:solid #000000;
    margin-top: 50px;
    text-align: center;
    background-color: #ffebcd;
    margin-left: 40px;
}
a
{
    color: #ac2d51;
}
#link
{
	text-align:center;
	font-size: 20px;
}
</style>
</head>
<body>

<h4>Students Information</h4>
<p id="link"><a href="read.jsp" >Click here to go back to Read page</a></p>
<%
	int rollno=Integer.parseInt(request.getParameter("roll_no"));
	String op=request.getParameter("rollno_choice");
	Read_numbers robj= new Read_numbers();
	ResultSet rs= robj.read_roll_no(rollno,op);
	while(rs.next())
	{ int roll_no=rs.getInt("roll_no");
%>
<div id="stu">
	<p>Name: <%=rs.getString("name") %></p>
	<p>Department: <%=rs.getString("dept") %></p>
	<p>Mail Id: <%=rs.getString("mailid") %></p>
	<p>Roll No: <%=roll_no %></p>
	<p>Year: <%=rs.getInt("yop") %></p>
	<p>Attendance Percent: <%=rs.getDouble("attper") %></p>
	<p>CGPA: <%=rs.getDouble("cgpa") %></p>
	<%
	Display dobj=new Display();
	ResultSet rsa= dobj.get_sgpa(roll_no);
	while(rsa.next())
	{
	%>
	<p>Sem no.: <%=rsa.getDouble("sem") %>
	SGPA: <%=rsa.getDouble("sgpa") %></p>
	<%} %>
</div>
<%} %>	
</body>
</html>
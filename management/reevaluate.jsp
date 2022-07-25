<%@ page language="java" contentType="text/html; "%>
<%@page import="Reevaluation.Pending_cases,Reevaluation.Reevaluate,java.sql.*" %>
<html>
<head>
<title>
Reevaluation
</title>
<style>
#reeval-update{
    width: 40%;
    height: 550px;
    border:solid #000000;
    margin: auto;
    margin-top: 50px;
    text-align: center;
    background-color: #ffebcd;
    font-size: 1.5em;    
}
#view_table
{
    text-align: center;
}
#submit
{
    width: 30%;
    height: 50px;
    text-align: center;
    background-color: #ac2d51;
    border-style: revert;
    border-radius: 425px;
    color: #ffebcd;
    font-size: 1.5em;
}
h4
{
  margin-top: 50px;
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size: 40px; 
  color: #ac2d51;
}
body
{
    background-color: #97f9f1b5;
}
#table
{
   margin-left: auto;
   margin-right: auto;
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
</style>
</head>
<body>

    <h4>View the pending cases for reevaluation and update the marks</h4>
    <div id="view_table">
        <p style="font-size: 30px;">Click on the button to view the pending cases</p>
        <form method="get" action="reevaluate.jsp">
            <input id="submit" type="submit" value="View pending cases">
        </form>
    </div>
    <div>
	<table id="table" border ="4" cellpadding ="6" cellspacing ="10" width ="40%" >
        <thead>
            <th>Roll no</th>
            <th>Semester no:</th>
            <th>Subject Id:</th>
        </thead>
        <tbody>
<%
	Pending_cases pobj= new Pending_cases();
	ResultSet rs= pobj.display_pc();
	while(rs.next())
	{
%>
            <tr>
                <td><%=rs.getInt("roll_no") %></td>
                <td><%=rs.getInt("sem") %></td>
                <td><%=rs.getString("subject") %></td>
            </tr>
<%} %>
		</tbody>
    </table>
	</div>
    <div id="reeval-update">
        <form method="get" action="reevalcalc.jsp">
            <p><b>Mark updation form</b></p>
            <p>
            <label for="roll_no">Student Roll no: </label><br><br>
            <input type="number" id="roll_no" name="roll_no" placeholder="roll no" size = "20" maxlength="25">
            </p>
            <p>
                <label for="sem_no">Semester no: </label><br><br>
                <input type="number" id="sem_no" name="sem_no" placeholder="sem no" size = "20" maxlength="25">
            </p>
            <p>
                <label for="sub">Subject Id(between s1 to s6): </label><br><br>
                <input type="text" id="sub" name="sub" placeholder="subject id" size = "20" maxlength="25">
            </p>
            <p>
                <label for="mark">Updated Mark: </label><br><br>
                <input type="number" step="any" id="mark" name="mark" placeholder="mark" size = "20" maxlength="25"> 
            </p>
            <p>
                <input type="submit" value="Submit Details">
            </p>
        </form>
    </div>
<p id="link"><a href="management.jsp" >Management Home Page</a></p>
</body>
</html>
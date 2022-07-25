<%@ page language="java" contentType="text/html; "%>
<!DOCTYPE html>
<html>
<head>
<title>Insert details</title>
<style>
#stu_det_form{
    float: right;
    width: 40%;
    height: 450px;
    border:solid #000000;
    margin-top: 40px;
    text-align: center;
    background-color: #ffebcd;
    margin-right: 30px;
}
#marks{
    float: left;
    width: 40%;
    height: 500px;
    border:solid #000000;
    margin-top: 20px;
    text-align: center;
    background-color: #ffebcd;
    margin-left: 30px;
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
    background-color: #b0ccffba;
}
label
{
    font-size: 1.5em;
}
#head
{
    font-size: 2em;
    font-style: times normal;
    font-weight: bold;
    text-transform: uppercase;
    color: #0000ff;
}
a
{
	position: absolute;
	bottom: 10px;
	text-align: center;
	font-size: 20px;
	color: #ac2d51;
}
</style>
</head>
<body>

<h4>Insert basic details in the basic details form and marks in the mark details form</h4>
<div id="stu_det_form">
    <form method="get" action="insertdetails.jsp">
        <p id = "head">Student Details Form</p>
        <p>
           <label for="name">Name: </label>
            <input type="text" id="name" name="name" placeholder="name" size = "30" maxlength="35">
        </p>
        <p>
            <label for="roll_no">Roll no: </label>
             <input type="number" id="roll_no" name="roll_no" placeholder="roll no" size = "30" maxlength="35">
        </p>
        <p>
            <label for="dept">Department: </label>
            <input type="text" id="dept" name="dept" placeholder="department" size = "30" maxlength="35">
        </p>
        <p>
            <label for="mailid">Mail ID: </label>
            <input type="email" id="mailid" name="mailid" placeholder="mail id" size = "35" maxlength="40">
        </p>
        <p>
            <label for="year">YOP: </label>
            <input type="number" id="year" name="year" placeholder="year" size = "30" maxlength="35"> 
        </p>
        <p>
            <label for="attper">Attendance Percent: </label>
            <input type="number" step="any" id="attper" name="attper" placeholder="attendance" size = "30" maxlength="35"> 
        </p>
        <p>
            <input type="submit" value="Submit Details">
        </p>
    </form>
</div>
<div id="marks">
    <form method="get" action="insertmarks.jsp">
        <p id ="head">Marks form</p>
        <p>
        <label for="roll_no">Roll no: </label>
        <input type="number" step="any" id="roll_no" name="roll_no" placeholder="roll no" size = "20" maxlength="25">
        </p>
        <p>
            <label for="sem_no">Semester no: </label>
            <input type="number" step="any" id="sem_no" name="sem_no" placeholder="sem no" size = "20" maxlength="25">
        </p>
        <p>
            <label for="s1">S1: </label>
            <input type="number" step="any" id="s1" name="s1" placeholder="mark" size = "20" maxlength="25">
        </p>
        <p>
            <label for="s2">S2: </label>
            <input type="number" step="any" id="s2" name="s2" placeholder="mark" size = "20" maxlength="25">
        </p>
        <p>
            <label for="s3">S3: </label>
            <input type="number" step="any" id="s3" name="s3" placeholder="mark" size = "20" maxlength="25">
        </p>
        <p>
            <label for="s4">S4: </label>
            <input type="number" step="any" id="s4" name="s4" placeholder="mark" size = "20" maxlength="25">
        </p>
        <p>
            <label for="s5">S5: </label>
            <input type="number" step="any" id="s5" name="s5" placeholder="mark" size = "20" maxlength="25">
        </p>
        <p>
            <label for="s6">S6: </label>
            <input type="number" step="any" id="s6" name="s6" placeholder="mark" size = "20" maxlength="25">
        </p>
        <p>
            <input type="submit" value="Submit Details">
        </p>
    </form>
</div>
<p><a href="management.jsp" >Management Home Page</a></p>
</body>
</html>
<%@ page language="java" contentType="text/html; "%>
<!--this is is supposed to be index and this index page will be protected by both roles so after login using a form in a separate page 
and redirected appropriately-->
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome page</title>
</head>
<style>
h1
{
  text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size:45; 
  color: #79272e;                             
}
h4{
    text-align: center;
  font-family:'Times New Roman', Times, serif;
  font-size: 20px;
}

</style>

<body>
<%
    response.sendRedirect(request.getContextPath() + "/user_role_check");
%>
<h1>Welcome</h1>
<p></p>
<p></p>
</body>
</html>
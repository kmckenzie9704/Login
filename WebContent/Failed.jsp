<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Failure</title>
</head>
<body>

Wrong <b>username</b> and <b>password</b> combination!

<br/>
<%
String name = (String)session.getAttribute("SessionName");

if(name == "" || name ==null){
	name ="User";
}
%>
<%= "Session Name: "+name %>

<br/>
<br/>
<a href="index.jsp">Go To Login Page!</a>

</body>
</html>
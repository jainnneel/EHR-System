<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<form action="verify.jsp" method="post">
Health-card:
<input type="text" name="healthid" required> 
password:
<input type="password" name="password" required> <br>
<br>
<input type="submit" value="submit" >
<br>
<br>
<% 
//session.invalidate();
String s=(String)session.getAttribute("msg");
if(s!=null)
{
out.println(s);
}
session.removeAttribute("i");	 
%> 
<a href="register.jsp">for new user</a>

</form>

</body>
</html>

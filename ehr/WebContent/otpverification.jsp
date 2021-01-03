<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1="";
int i =(Integer)session.getAttribute("otp");
int o=Integer.parseInt(request.getParameter("otp"));
if(i==o)
{
	
	  response.sendRedirect("send2.jsp");

	  session.removeAttribute("o");
	  
	  return ;
}
else
{
	 s1="otpverify.jsp";
}
session.setAttribute("o","invalid otp");	
response.sendRedirect(s1);
%>
</body>
</html>
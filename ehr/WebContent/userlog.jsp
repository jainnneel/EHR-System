<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="ehr.*" import="java.time.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <script type="text/javascript">
window.history.forword();
function noback() {
	window.history.forword();
		
	
}

</script>
</head>
<body>

<%

int f;
Time t;
Time pt;
int i =(Integer)session.getAttribute("id");
pt =(Time)session.getAttribute("time");
Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");
Statement s =c.createStatement();
Statement s1 =c.createStatement();
s1.executeUpdate("UPDATE user_log SET logouttime='"+java.time.LocalTime.now()+"' WHERE hid='"+i+"' AND logintime='"+pt+"'");



response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);




response.sendRedirect("register.jsp"); 


 
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");
Statement s =c.createStatement();
ResultSet results = s.executeQuery("SELECT * FROM lab_input");
while (results.next())
{
	
	int i =results.getInt(1);
	String g =results.getString(2);
	out.println(g);
	%>
	 <img alt="jjjj" src="<%=g%>" height="500" width="500"/>
	<% 
}
%>	 
</body>
</html>
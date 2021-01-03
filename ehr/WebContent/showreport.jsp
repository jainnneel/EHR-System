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

Statement s1 =c.createStatement();
ResultSet results1 = s1.executeQuery("SELECT * FROM lab_input"); 
int i =(Integer)session.getAttribute("id");
while (results1.next()) {
	 
	  String path = results1.getString(2);
	  int f=results1.getInt(1);
	  if(i==f)
	  {
		%>
		
		<%   
	  }
	  
     
}
%>
<img alt="" src="reportd.png"/>
</body>
</html>
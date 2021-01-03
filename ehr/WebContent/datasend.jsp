<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.*" import="java.time.*" import="ehr.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String f=request.getParameter("disease");
String l=request.getParameter("medi");
String u=request.getParameter("area");
String p=request.getParameter("advice");
String pre=request.getParameter("desc");

int i=(Integer)session.getAttribute("idi");
String e="";
long millis=System.currentTimeMillis();  
java.sql.Date date=new java.sql.Date(millis); 
LocalTime time = LocalTime.now();  
Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");
Statement s =c.createStatement();
s.executeUpdate("INSERT INTO d_input(id,disease,medi,area,advice,date,time,presc) VALUES('"+i+"','"+f+"','"+l+"','"+u+"','"+p+"','"+date+"','"+time+"','"+pre+"')");
ResultSet results = s.executeQuery("SELECT email FROM reg WHERE helthid='"+i+"'");
while (results.next()) 
{
	 e = results.getString("email");	
		
}
String receiverEmailID = e;
String emailSubject = "health-card";
String emailBody="your health data is updated";	
email d =new email();
d.SendEmail(receiverEmailID,emailSubject,emailBody);
s.close();
c.close();
response.sendRedirect("data_submit.jsp");
%>
</body>
</html>
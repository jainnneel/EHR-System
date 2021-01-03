<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sona | Template</title>

    <!-- Google Font -->
    <%@ include file="inadd.jsp" %>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" href="./data_input.css">
</head>
<body>
<%@ include file="head_log.jsp" %> 
<%
String pre = "";
Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");
Statement s =c.createStatement();
ResultSet data = s.executeQuery("SELECT * FROM d_input"); 
while (data.next()) 
{
	pre=data.getString(8);
}

%>
    <div class="log-form">
  <b><h2>Data Input</h2></b>
  <form action="datasend1.jsp" method="post" >
Report Photo:<input type="file" name="report" required> 
<br>
<b><%=pre%></b>
 <button type="submit" class="btn">SUBMIT</button>
 </form>
</div>
 <br><br><br>
</body>
</html>
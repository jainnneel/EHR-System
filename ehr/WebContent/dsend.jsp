<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.*" import="ehr.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
 <link rel="stylesheet" href="d_input.css">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
    <%@ include file="inadd.jsp" %>
<body>
<%@ include file="head_log.jsp" %> 
<%
Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");
Statement s =c.createStatement();
String f=(String)session.getAttribute("firstname");
String l=(String)session.getAttribute("radr");
String lc=(String)session.getAttribute("cadr");

String dd=(String)session.getAttribute("dd");
String mm=(String)session.getAttribute("mm");
String yyyy=(String)session.getAttribute("yyyy");
String sex=(String)session.getAttribute("sex");
System.out.println(sex);
String e=(String)session.getAttribute("email");



s.executeUpdate("INSERT INTO d_reg(fname,email,dd,mm,yyyy,sex,cadr,radr) VALUES('"+f+"','"+e+"','"+dd+"','"+mm+"','"+yyyy+"','"+sex+"','"+l+"','"+lc+"')");
String receiverEmailID = e;
String emailSubject = "health-card";
String emailBody = "";	
email d =new email();
d.SendEmail(receiverEmailID,emailSubject,emailBody);
%>
<div class="login" style="position: absolute;top:300px;left:700px;width: 400px">
 	<h4>Further updates send email</h4>
 	<br>
 	<br>
    <form action="index.html" method="post">
    
    <button type="submit" class="btn btn-primary btn-block btn-large">Home</button>
    </form>
</div>
	
</body>
</html>
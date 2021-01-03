<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <!-- Google Font -->
    <%@ include file="inadd.jsp" %>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" href="./data_input.css">
</head>
<body>
<%@ include file="head_log.jsp" %> 
    <div class="log-form">
  <b><h2>Data Input</h2></b>
  <form action="datasend2.jsp" method="post" >
Bill Photo:<input type="file" name="report" required> 
<br>
 <button type="submit" class="btn">SUBMIT</button>
 </form>
</div>
 <br><br><br>
</body>
</html>
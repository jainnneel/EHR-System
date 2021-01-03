<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
  <%@ include file="inadd.jsp" %>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" href="./data_input.css">
</head>
<body style="background-color: white">
 <%@ include file="head_log.jsp" %>
  
    <div class="log-form">
  <b><h2>Data Input</h2></b>
  <form action="datasend.jsp">
Disease:<input type="text" name="disease" required> <br>
Medicine:<input type="text" name="medi" required> <br>
Area:<input type="text" name="area" required><br>
Prescription:<input type="text" name="desc" required><br>

Doctor advice:<textarea rows="2" cols="50" name="advice"></textarea> 
<br>
<br>

    
    
    <button type="submit" class="btn">SUBMIT</button>
    
  </form>
</div>
 <br><br><br>
</body>
</html>
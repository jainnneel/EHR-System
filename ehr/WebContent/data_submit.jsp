<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unicas, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sona | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
  
 <%@ include file="inadd.jsp" %>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="./d_input.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
		    
</head>
<body>
   <%@ include file="head_log.jsp" %>
     <div style="position:absolute; left:600px; bottom: 500px;">
    
   

<div class="login" style="position: absolute;top:50px;left: 70px;width: 500px">
	<h3>Data Successfully saved!!!</h3>
    <form action="d_input.jsp" method="post">
     <br>
     <button type="submit" class="btn btn-primary btn-block btn-large">Next Patient</button>
    </form>
</div>
</body>
</html>
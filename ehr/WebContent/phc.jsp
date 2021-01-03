<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <%@ include file="inadd.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="./style1.css"> 
</head>
<body>
<%@ include file="newadd.jsp" %> 
<div class="container">
  <form action="phc_verify.jsp" method="post">
    <div class="row">
      <h4>Login</h4>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Username"  name="username" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="Password" placeholder="password" name="password" required/>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>
      
    <input type="submit"  id="gender-male"/>
  </form>
</div>
</body>
</html>

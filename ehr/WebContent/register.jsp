<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sona | Template</title>

 <!-- Google Font -->
<%@ include file="inadd.jsp" %> 
    <!-- <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet"> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="./style1.css">  
    
    
    <script type="text/javascript">
    function noback()
	{
	window.history.forword();
	}
 setTimeout(noback(),0);
    window.onload=function(){null};
</script>	
</head>
<body>
<%-- <%
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
%> --%>
 <%--   <%@ include file="head.jsp" %> --%>
	<%@ include file="newadd.jsp" %> 
 <!-- Page Preloder -->
<div class="container">
  <form action="send.jsp" method="post">
    <div class="row">
      <h4>Register</h4>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Name(As per ID proof)*" name="fname" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="email" placeholder="Email Adress" name="email" required/>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="Number" placeholder="Phone No." name="number" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon" >
        <input type="password" placeholder="Password" name="password" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
     
      <div class="input-group input-group-icon" >
        <input type="text" placeholder="Address" name="add" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      
      <div class="input-group input-group-icon" >
        <input type="text" placeholder="ID Proof(Adharcard/Pancard/Electioncard)" name="card" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <h6>Photo:</h6>
      <div class="input-group input-group-icon" >
        <input type="file" placeholder="" name="photo" required/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
    <div class="row">
      <div class="col-half">
        <h6>Date of Birth</h6>
        <div class="input-group">
          <div class="col-third">
            <input type="text" placeholder="DD" name="dd" required/>
          </div>
          <div class="col-third">
            <input type="text" placeholder="MM" name="mm" required/>
          </div>
          <div class="col-third">
            <input type="text" placeholder="YYYY" name="yyyy" required/>
          </div>
        </div>
      </div>
      <div class="col-half">
        <h6>Gender</h6>
        <div class="input-group">
          <input type="radio" name="gender" value="male" id="gender-male" required/>
          <label for="gender-male">Male</label>
          <input type="radio" name="gender" value="female" id="gender-female" required/>
          <label for="gender-female">Female</label>
        </div>
      </div>
    </div>
   
    <div class="row">
      <h6>Terms and Conditions</h6>
      <div class="input-group">
        <input type="checkbox" id="terms" required/>
        <label for="terms">I accept the terms and conditions for signing up to this service, and hereby confirm I have read the privacy policy.</label>
      </div>
    </div>
    <input type="submit"  id="gender-male"/>
  </form>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script1.js"></script>

</body>
</html>

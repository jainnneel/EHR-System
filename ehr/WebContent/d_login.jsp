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
    <title>Doctor-signup</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">
    <%@include file="inadd.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="./style1.css">  
    <!-- Css Styles -->
<%--    <%@ include file="inadd.jsp" %> --%>
    
</head>
<body>
<%@ include file="newadd.jsp" %> 
<div class="container">
  <form action="d_signup.jsp" method="post">
    <div class="row">
      <h4>Register</h4>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Name(As per ID proof)*" name="fname"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="email" placeholder="Email Adress" name="email"/>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="Number" placeholder="Phone No." name="number"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      
     
      <div class="input-group input-group-icon" >
        <input type="text" placeholder="Residential address" name="radd"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon" >
        <input type="text" placeholder="Clinic address" name="cadd"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>   
    <div class="row">
      <div class="col-half">
        <h6>Date of Birth</h6>
        <div class="input-group">
          <div class="col-third">
            <input type="text" placeholder="DD" name="dd"/>
          </div>
          <div class="col-third">
            <input type="text" placeholder="MM" name="mm"/>
          </div>
          <div class="col-third">
            <input type="text" placeholder="YYYY" name="yyyy"/>
          </div>
        </div>
      </div>
      <div class="col-half">
        <h6>Gender</h6>
        <div class="input-group">
          <input type="radio" name="gender" value="male" id="gender-male" />
          <label for="gender-male">Male</label>
          <input type="radio" name="gender" value="female" id="gender-female" />
          <label for="gender-female">Female</label>
        </div>
      </div>
    </div>
   
    <div class="row">
      <h6>Terms and Conditions</h6>
      <div class="input-group">
        <input type="checkbox" id="terms"/>
        <label for="terms">I accept the terms and conditions for signing up to this service, and hereby confirm I have read the privacy policy.</label>
      </div>
    </div>
    <input type="submit"  id="gender-male"/>
  </form>
</div>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script1.js"></script>
<%-- <%@ include file="head.jsp" %> --%>		
<%-- <div class="form">
      
       <ul class="tab-group">
        <li class="tab"><a href="#login">Log In</a></li>
        <li class="tab active"><a href="#signup">Sign Up</a></li>
      
      </ul>
      
      <div class="tab-content">
         <div id="login">   
     <h2 class="head">Welcome Back!</h2>
          
          <form action="d_verify.jsp" method="post">
          
            <div class="field-wrap">
            <label>
             Username<span class="req">*</span>
            </label>
            <input type="text" required autocomplete="off" name="username"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" required autocomplete="off" name="password"/>
          </div>
          
			
          <button type="submit" class="button button-block"/>Log In</button>
           <%
			String s=(String)session.getAttribute("d");
			if(s!=null)
			{
				  %> <h4><%=s%></h4><% 
			}
			session.removeAttribute("d");
			%>
          
       
          </form>

        </div>
        
        <div id="signup">   
           <h2 class="head">Doctor Registration</h3>
         
          <form action="uploadServlet" method="post" enctype="multipart/form-data">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" name="fname"/>
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text"required autocomplete="off" name="lname"/>
            </div>
            
          </div>

          <div class="field-wrap">
            <label>
              Email<span class="req">*</span>
            </label>
            <input type="email" required autocomplete="off" name="email"/>
          </div>
          
          <div class="field-wrap">
            <label>
             License no:<span class="req">*</span>
            </label>
            <input type="text" required autocomplete="off" name="number"/>
          </div>
          
          <div class="field-wrap">
            <b class="text">License photo:</b>
            <label>
             <span class="req"></span>
            </label>
            <input type="file" required autocomplete="off" name="image" />
          </div>
          
          <br>
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
     
      </div><!-- tab-content -->
      
</div> <!-- /form -->
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script.js"></script> --%>
 
  
<br>
</body>
</html>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="./style1.css"> 
</head>
<body>
<%@ include file="newadd.jsp" %> 
<div class="container">
  <form action="l_verify.jsp" method="post">
    <div class="row">
      <h4>Login</h4>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Username"  name="username"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="Password" placeholder="password" name="password"/>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>
      
    <input type="submit"  id="gender-male"/>
  </form>
</div>

<%-- <%@ include file="head.jsp" %>
<div class="form">
      
     <ul class="tab-group">
        <li class="tab"><a href="#login">Log In</a></li>
        <li class="tab active"><a href="#signup">Sign Up</a></li>
      
      </ul>
      
      <div class="tab-content">
       <div id="login">   
     <h2 class="head">Welcome Back!</h2>
          
          <form action="l_verify.jsp" method="post">
          
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
			String s=(String)session.getAttribute("l");
			if(s!=null)
			{
				  %> <h4><%=s%></h4><% 
			}
			session.removeAttribute("l");
			%>
          
          </form>

        </div>
        <div id="signup">   
           <h2 class="head">Lab Technician Registration</h3>
         
          <form action="l_signup.jsp" method="post">
          
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
            <input type="file" required autocomplete="off" name="image"/>
          </div>
          
          <br>
          
          <button type="submit" class="button button-block"/>Get Started</button>
          
          </form>

        </div>
        
       
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script.js"></script>
 

<br>
 --%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.*" import="ehr.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
   <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
 <link rel="stylesheet" href="d_input.css">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
  <link rel="stylesheet" href="./cardstyle.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
    <%@ include file="inadd.jsp" %>
</head>
<body style="display: block;">
	<%@ include file="head_log.jsp" %> 
<%
Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");
Statement s =c.createStatement();
String f=(String)session.getAttribute("firstname");
String l=(String)session.getAttribute("adr");
String dd=(String)session.getAttribute("dd");
String mm=(String)session.getAttribute("mm");
String yyyy=(String)session.getAttribute("yyyy");

String sex=(String)session.getAttribute("sex");
System.out.println(sex);
System.out.println(l);
String a=(String)session.getAttribute("pass");
String e=(String)session.getAttribute("email");
int i=(Integer)session.getAttribute("hid");
String pass=(String)session.getAttribute("password");
String pic=(String)session.getAttribute("photo");
String card=(String)session.getAttribute("card");

String path="image//";
String qpath="qr//";
String path2=qpath.concat(f);

String path1=path.concat(pic);
System.out.print(path.concat(pic));
System.out.print(path2);
s.executeUpdate("INSERT INTO reg(fname,password,helthid,email,dd,mm,yyyy,sex,pic,idproof) VALUES('"+f+"','"+a+"','"+i+"','"+e+"','"+dd+"','"+mm+"','"+yyyy+"','"+sex+"','"+path1+"','"+card+"')");
String receiverEmailID = e;
String emailSubject = "health-card";
String emailBody = "your health-card no:"+i+" and your password is:"+pass;	
email d =new email();
d.SendEmail(receiverEmailID,emailSubject,emailBody);
%>
<%-- <div class="login" style="position: absolute;top:300px;left:700px;width: 400px">
 	<h4 style="a: "><%="Health-card number:"+i%></h4>
 	<br>
 	<br>
   <form action="loginuser.jsp" method="post">
    
    <button type="submit" class="btn btn-primary btn-block btn-large">Go to Login</button>
    </form> 
</div>
 --%>
 <br>
 <br>
 <br>
 
 <div class="card " style="float: left">
  <header>
    <h1>HEALTH CARD</h1>
  </header>

  <article>
    <img alt='My Pic' height="100px" width="100px" src="<%=path1%>">
   
    <div class="card1">
           
             <br>
        <br>
        <b style="text-align:center;"><%=i%></b>
        <br>
   <br>
         <b>NAME:<%=f %></b> 
       <br>
        <br>  
        
          <b>DOB:<%=dd%>/<%=mm%>/<%=yyyy%></b>
         <br>
         <br>
        
         <b>GENDER:<%=sex%></b>
         <br>
         <br>
         
         <br>
         <br>
     <div class="a" >SMART CARE</div> 
     

      
    </div>
  </article>
</div>

<div class="card " style="float: left">
  <header>
    <h1>HEALTH CARD</h1>
  </header>

  <article>
    <img alt='My Pic' height="100px" width="100px" src="qr.png">
   
    <div class="card1">
           
             <br>
        <br>
        <b style="text-align:center;"><%=i%></b>
        <br>
   <br>
 
         <b>Email:<%=e%></b> 
       <br>
        <br>  
        
        
        
         <b>Address:<%=l%></b>
         <br>
         <br>
         
         <br>
         <br>
     <div class="a" >SMART CARE</div> 
     

      
    </div>
  </article>
  
</div>
<br>
<br>
<br>
 <br>
 <br>
 <br>
  <br>
 <br>
 <br>
 <br>
  <br>
 <br>
 <br><br>
  <br>
 <br>
 <br>
 <br>
  <br>
 <br>
 <br><br>
  <br>
 <br>
 <br>
 <form action="loginuser.jsp" method="post">
    
    <button type="submit" class="btn btn-primary btn-block btn-large">Go to Login</button>
    </form>
</body>
</html>
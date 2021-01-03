<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.*" import="ehr.*"%>
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
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" href="./d_input.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>
<body style="background-color:skyblue">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Section Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="canvas-open">
        <i class="icon_menu"></i>
    </div>
    <div class="offcanvas-menu-wrapper">
        <div class="canvas-close">
            <i class="icon_close"></i>
        </div>
        <div class="search-icon  search-switch">
            <i class="icon_search"></i>
        </div>
        <div class="header-configure-area">
            <div class="language-option">
                <img src="img/flag.jpg" alt="">
                <span>EN <i class="fa fa-angle-down"></i></span>
                <div class="flag-dropdown">
                    <ul>
                        <li><a href="#">Zi</a></li>
                        <li><a href="#">Fr</a></li>
                    </ul>
                </div>
            </div>
            <a href="#" class="bk-btn">Booking Now</a>
        </div>
        <nav class="mainmenu mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./rooms.html">Rooms</a></li>
                <li><a href="./about-us.html">About Us</a></li>
                <li><a href="">Login</a>
                    <ul class="dropdown">
                        <li><a href="./room-details.html">Doctor</a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#">lab</a></li>
                        <li><a href="#">pharma</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">News</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="top-social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-tripadvisor"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
        </div>
        <ul class="top-widget">
            <li><i class="fa fa-phone"></i> (12) 345 67890</li>
            <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
        </ul>
    </div>
    <!-- Offcanvas Menu Section End -->

    <!-- Header Section Begin -->
    <header class="header-section">
        
        <div class="menu-item">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="logo">
                            <a href="./index.html">
                               <!--  <img src="img/logo.png" alt=""> -->
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <div class="nav-menu">
                            <nav class="mainmenu">
                                <ul>
                                    <li class="active"><a href="./index.html">Home</a></li>
                                    <li><a href="register.jsp">User</a></li>
                                    <li><a href="./about-us.html">About Us</a></li>
                                    <li><a href="">Login</a>
                                        <ul class="dropdown">
                                            <li><a href="d_login.jsp">Doctor</a></li>
                                           <li><a href="l_login.jsp">Lab Technician</a></li>
                                            <li><a href="p_login.jsp">Pharmacist</a></li>
                                            <!-- <li><a href="#">Premium Room</a></li> -->
                                        </ul>
                                    </li>
                                    <li><a href="./blog.html">News</a></li>
                                    <li><a href="./contact.html">Contact</a></li>
                                </ul>
                            </nav>
                            <div class="nav-right search-switch">
                                <i class="icon_search"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
<%
String q="";
String a="";
String em="";
String s1="";

String f=request.getParameter("fname");
String l=request.getParameter("add");

String p=request.getParameter("password");
String e=request.getParameter("email");
String t=request.getParameter("dd");
String m=request.getParameter("mm");
String y=request.getParameter("yyyy");
String ge=request.getParameter("gender");
String image=request.getParameter("photo");
String card=request.getParameter("card");

session.setAttribute("password",p);
System.out.println(l);
a=hash.gethash(p.getBytes() , "SHA-256");

Random r= new Random();
int rn = r.nextInt(999999);
int i = 100*72+rn*37-rn; 
session.setAttribute("firstname",f);

session.setAttribute("hid",i);
session.setAttribute("pass",a);
session.setAttribute("adr",l);
session.setAttribute("dd",t);
session.setAttribute("mm",m);
session.setAttribute("yyyy",y);
session.setAttribute("email",e);
session.setAttribute("sex",ge);
session.setAttribute("photo",image);
session.setAttribute("card",card);

Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");
Statement s =c.createStatement();
ResultSet results = s.executeQuery("SELECT * FROM reg");
while (results.next()) 
{
	 em = results.getString("email");
	System.out.println(em);
	 if(e.equalsIgnoreCase(em))
	  {		
		 	 s1="register.jsp";
			 session.setAttribute("e","user already registered !! Login here");	
			 response.sendRedirect(s1);
			 
			 return ;

	  }
}
session.removeAttribute("e");
String receiverEmailID = e;
String emailSubject = "OTP verification for health-card";
Random o= new Random();
int op = o.nextInt(100);
int otp = 100+op+852+op;
session.setAttribute("otp",otp);
String emailBody = "your otp for registration:"+otp+".";	
email d =new email();
d.SendEmail(receiverEmailID,emailSubject,emailBody);
System.out.print(otp);
// q=hash.gethash(u.getBytes() , "SHA-256");
 

qr.generate_qr(f, i+" ");
response.sendRedirect("otpverify.jsp");


%>


<div class="login" style="position: absolute;top:300px;left:700px;width: 400px">
<%-- 	<h1><%="Health-card number:"+i%></h1> --%>
    <form action="register.jsp" method="post">
    
    <button type="submit" class="btn btn-primary btn-block btn-large">Go to Login</button>
    </form>
</div>

<%

%>

 
 
 </body>
</html>

<br>
<br>



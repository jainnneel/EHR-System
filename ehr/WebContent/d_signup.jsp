<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.*" import="ehr.*"%>
    <%-- <%@ page import="com.oreilly.servlet.MultipartRequest" %>  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <%@ include file="inadd.jsp" %>
</head>
<body>
<%@ include file="newadd.jsp" %> 
<%
String f=request.getParameter("fname");
	String l=request.getParameter("radd");
	String lc=request.getParameter("cadd");

	
	String e=request.getParameter("email");
	String t=request.getParameter("dd");
	String m=request.getParameter("mm");
	String y=request.getParameter("yyyy");
	String ge=request.getParameter("gender");
	System.out.println(l);
	

	Random r= new Random();
	int rn = r.nextInt(100);
	int i = 100*67+rn*37-rn; 
	session.setAttribute("firstname",f);

	
	session.setAttribute("radr",l);
	session.setAttribute("cadr",lc);
	
	session.setAttribute("dd",t);
	session.setAttribute("mm",m);
	session.setAttribute("yyyy",y);
	session.setAttribute("email",e);
	session.setAttribute("sex",ge);

	session.removeAttribute("e");
	String receiverEmailID = e;
	String emailSubject = "OTP verification for health-card";
	Random o= new Random();
	int op = o.nextInt(100);
	int otp = 100+op+852+op;
	session.setAttribute("otp",otp);
	String emailBody = "your otp for health-card:"+otp+"...from neel jain";	
	email d =new email();
	d.SendEmail(receiverEmailID,emailSubject,emailBody);
	System.out.print(otp);
	// q=hash.gethash(u.getBytes() , "SHA-256");
	 

	//qr.generate_qr(i+"-qr", i+" "+p);
	response.sendRedirect("l_otpverify.jsp");



%>
</body>
</html>
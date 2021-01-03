<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="ehr.*" import="java.time.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <script type="text/javascript">
window.history.forword();
function noback() {
	window.history.forword();
		
	
}

</script>
</head>
<body onload="noback();" onpageshow="if(event.persisted) noback();" onUnload="">
<script type="text/javascript">
history.forword();
</script>	

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
response.setHeader("Cache-Control", "no-store"); 
response.setHeader("Pragma", "no-cache"); 
response.setDateHeader("Expires",0); 
 

int u=Integer.parseInt(request.getParameter("healthid"));
String p=request.getParameter("password");
/* System.out.println("healthid="+u);
System.out.println("password="+p); */

String s1="";
String a="";
a=hash.gethash(p.getBytes(),"SHA-256");
Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");
Statement s =c.createStatement();
ResultSet results = s.executeQuery("SELECT * FROM reg");
String fname=null;
String lname=null;
String uname=null;
String pass=null;
int f=0;
long millis=System.currentTimeMillis();  
java.sql.Date date=new java.sql.Date(millis); 
LocalTime time = LocalTime.now();

Time t=null;
session.setAttribute("time",t.valueOf(time));
while (results.next()) 
{
	 
		f=results.getInt(3);	 
	   pass = results.getString(2);
	 

	  if(u==f && a.equals(pass))
	  {		
		  session.setAttribute("id",f);
		   s.executeUpdate("INSERT INTO user_log(hid,logindate,logintime) VALUES('"+u+"','"+date+"','"+java.time.LocalTime.now()+"')");
		  response.sendRedirect("welcome.jsp");
		  session.setAttribute("lid",f);
		  session.removeAttribute("u");
		  return ;
	  }
	  else
	  {		
		  s1="loginuser.jsp";
	  }
}


session.setAttribute("u","invalid username or password");	
response.sendRedirect(s1);


%>
</body>
</html>
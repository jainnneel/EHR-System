<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



 </body>
 <%
String s1="";
int u=Integer.parseInt(request.getParameter("hid"));
Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");
Statement s =c.createStatement();
ResultSet results = s.executeQuery("SELECT * FROM reg");
while (results.next())
{
	 
	  String fname = results.getString(1);
	
	  String pass = results.getString(2);
	  int f=results.getInt(3);
	 
	
	  if(u==f)
	  {			
		  		session.setAttribute("idi",f);
			    session.setAttribute("fname",fname);
				
				session.removeAttribute("u");
			    response.sendRedirect("u_d_verify.jsp");
			    return ;
	  }
	  else
	  {	
		  session.setAttribute("u","invalid Heath-card No");
			s1="d_input.jsp";  		
	  }
	

}
response.sendRedirect(s1);

%>
 
</html>
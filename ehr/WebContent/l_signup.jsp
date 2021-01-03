<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
Connection conn=null;
PreparedStatement pstmt = null;
ResultSet rs=null;

FileInputStream fis=null;
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String image = request.getParameter("image");
File lice= new File(image);  
out.print(image);

Class.forName("com.mysql.jdbc.Driver").newInstance();
conn=DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");

pstmt = conn.prepareStatement("insert into l_reg(firstname,lastname,email,photo) values(?,?,?,?)");
pstmt.setString(1, fname);
pstmt.setString(2, lname);
pstmt.setString(3, email);
fis=new FileInputStream(lice);
pstmt.setBinaryStream(4,(InputStream)fis,50000); 
 int c=pstmt.executeUpdate();
 if(c==0)	
 {
	 out.println(" not done");
}
 else
 {
	 out.println(" done");

 }

}
catch(Exception e){}
 
response.sendRedirect("signup_success.jsp");
%>
</body>
</html>
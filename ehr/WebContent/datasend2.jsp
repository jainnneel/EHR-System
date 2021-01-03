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
	int i = (Integer)session.getAttribute("hid");
Connection conn=null;
PreparedStatement pstmt = null;

FileInputStream fis=null;

String image = request.getParameter("report");
/* File lice= new File(image);  
 */System.out.print(image);
String path="image//";
path.concat(image);
System.out.print(path.concat(image));
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn=DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");

pstmt = conn.prepareStatement("insert into pharma_input(hid,path) values(?,?)");
/* 
fis=new FileInputStream(lice); */
pstmt.setInt(1,i);
pstmt.setString(2,path.concat(image)); 
 int c=pstmt.executeUpdate();
 if(c==0)	
{
	 out.println("not done");
}
 else
 {
	 out.println("done");

 }

}
catch(Exception e){}
response.sendRedirect("p_success.jsp"); 

 %>
</body>
</html>
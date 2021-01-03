<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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

 
  <%@ include file="inadd.jsp" %>
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
  <link rel="stylesheet" href="./data.css">
</head>
<body>
<%@ include file="head_log.jsp" %>
	<%
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
%>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");
Statement s =c.createStatement();
ResultSet results = s.executeQuery("SELECT * FROM reg"); 

while (results.next()) {
	 
	  String fname = results.getString(1);
	  String lname = results.getString(2);
	  String uname = results.getString(3);
	  String pass = results.getString(4);
	  int f=results.getInt(5);
	  
      int i =(Integer)session.getAttribute("id");
}  
%>
<div class="container">
      <div class="header_wrap">
        <div class="num_rows">
		
				<div class="form-group"> 	<!--		Show Numbers Of Rows 		-->
			 		<select class  ="form-control" name="state" id="maxRows">
						 
						 
						 <option value="10">10</option>
						 <option value="15">15</option>
						 <option value="20">20</option>
						 <option value="50">50</option>
						 <option value="70">70</option>
						 <option value="100">100</option>
            <option value="5000">Show ALL Rows</option>
						</select>
			 		
			  	</div>
        </div>
        <div class="tb_search">
<input type="text" id="search_input_all" onkeyup="FilterkeyWord_all_table()" placeholder="Search.." class="form-control">
        </div>
      </div>
<table class="table table-striped table-class" id= "table-id">
  
	
<thead>
        <tr>
          <th>Disease</th>
          <th>Medicine</th>
          <th>Area</th>
          <th>Advice</th>
          <th>Prescription</th>
          <th>Date</th>
         </tr>
</thead>
<tbody>
<% 
ResultSet data=s.executeQuery("SELECT * FROM d_input");
while (data.next()) {
      %>
        

	 <%  
	int i =(Integer)session.getAttribute("id");
		
	  int id=data.getInt(1);
	  String disease = data.getString(2);
	  String medi = data.getString(3);
	  String area = data.getString(4);
	  session.setAttribute("ch",area);
	  String advice = data.getString(5);
	  String pre=data.getString(8);
	  Date date = data.getDate(6);
	  Time time=data.getTime(7);
	  if(i==id)
		{%>
		  
		  <td><%=disease%></td>
          <td><%=medi%></td>
          <td><%=area%></td>
          <td><%=advice%></td>
          <td><%=pre%></td>
          <td><%=date%></td>
          
		         
        </tr>
<%
}
}

%>

	
  
  </tbody>
</table>

<!--		Start Pagination -->
			<div class='pagination-container'>
				<nav>
				<form action="showreport.jsp">
					<button type="submit">show report</button>
					</form>
					<br>
					<br>
					
					<form action="showbill.jsp">
					<button type="submit">show bill</button>
					</form>
					</div>
				  <ul class="pagination">
				   <!--	Here the JS Function Will Add the Rows -->
				  </ul>
				</nav>
			</div>

</div> 
<%-- <section>
<h1>Medical Record</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Disease</th>
          <th>Medicine</th>
          <th>Area</th>
          <th>Advice</th>
          <th>date</th>
        
          
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
    <% 
ResultSet data=s.executeQuery("SELECT * FROM d_input");
while (data.next()) {
      %><tbody>
         <tr>

	 <%  
	int i =(Integer)session.getAttribute("id");
		
	  int id=data.getInt(1);
	  String disease = data.getString(2);
	  String medi = data.getString(3);
	  String area = data.getString(4);
	  String advice = data.getString(5);
	  Date date = data.getDate(6);
	  Time time=data.getTime(7);
	  if(i==id)
		{%>
		  
		  <td><%=disease%></td>
          <td><%=medi%></td>
          <td><%=area%></td>
          <td><%=advice%></td>
          <td><%=date%></td>
		         
        </tr>
<%
}
}

%>
</tbody>
  </table>
  </div>
</section>
 --%>
 <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js'></script>
<script  src="./datascript.js"></script>

<!-- <a href="showreport.jsp">show report</a>
<a href="showbill.jsp">show bill</a>
 -->
</body>
</html>

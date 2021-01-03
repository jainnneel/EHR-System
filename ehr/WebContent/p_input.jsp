<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="inadd.jsp" %>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	 <link rel="stylesheet" href="./d_input.css">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
    
</head>
<body>
<%@ include file="head_log.jsp" %>
    <div style="position:absolute; left:600px; bottom: 500px;">
    
  
<div class="login" style="position: absolute;top:50px;left: 170px;">
	
	<h4>Verification</h4>
	<br>
    
    <form action="p_u_verify.jsp" method="post">
    	
    	<input type="text" name="hid" placeholder="Health-card" required="required" />
       
        <button type="submit" class="btn btn-primary btn-block btn-large">Verify</button>
           <%
			String s=(String)session.getAttribute("u");
			if(s!=null)
			{
				  %> <h4><%=s%></h4><% 
			}
			session.removeAttribute("u");
			%>
    </form>
</div>





</div>

</body>
</html>
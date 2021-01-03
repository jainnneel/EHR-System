package ehr;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)
public class upload extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Override
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		  InputStream inputStream = null; // input stream of the upload file
	         
	        // obtains the upload file part in this multipart request
	        Part filePart = request.getPart("image");
	        if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
	        }
	        try{
	        Class.forName("com.mysql.jdbc.Driver").newInstance();
	        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3308/ehr","root","root");
	        PreparedStatement pstmt = conn.prepareStatement("insert into d_reg(firstname,lastname,email,lic) values(?,?,?,?)");
	        pstmt.setString(1, fname);
	        pstmt.setString(2, lname);
	        pstmt.setString(3, email);
	        if (inputStream != null)
	        {
	        pstmt.setBinaryStream(4,inputStream);
	        }
                // fetches input stream of the upload file for the blob column
	        pstmt.executeUpdate();
	        }
	        catch(Exception e){}
	       // getServletContext().getRequestDispatcher("/.jsp").forward(request, response);
	        System.out.print("done");
	}
}

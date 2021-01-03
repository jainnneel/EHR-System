package ehr;
import java.security.MessageDigest;


public class hash {

		 public static String gethash(byte[] in,String al)
		 {
			 String hashvalue="";
		 	try
		 	{
		 		MessageDigest md = MessageDigest.getInstance("SHA-256");
		 		md.update(in);
		 		byte[] db = md.digest();
//		 		 hashvalue=DatatypeConverter.printHexBinary(db).toLowerCase();
		 		
		 	}
		 	catch(Exception e){}
		 
			return hashvalue;
		 }
		 
		 public static void main(String args[])
		 {
			/* String s1="neel jain";
			 System.out.print(gethash(s1.getBytes(),"SHA-256"));*/
		 }
		 
		
	}
   


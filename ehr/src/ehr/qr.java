package ehr;

import java.io.*;
import java.sql.*;


import net.glxn.qrgen.image.ImageType;
public class qr {
	
	public static void generate_qr(String image_name,String qrCodeData) {
        try {
        	File f=new File("E://workspace//ehr//WebContent//qr//"+image_name.concat(".jpg"));
        	//File f =new File(image_name.concat(".jpg"));
   		String s =qrCodeData ;
   	    ByteArrayOutputStream o= net.glxn.qrgen.QRCode.from(s).to(ImageType.JPG).stream();
   	    FileOutputStream fout = new FileOutputStream(f);
   	    fout.write(o.toByteArray());
   	    fout.close();
   	    System.out.print("done!!");
            System.out.println("QR Code image created successfully!");
        } catch (Exception e) {
            System.err.println(e);
        }
    }
	public static void main(String[] args) throws IOException
	{}}
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Upload_Datasets</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium600w.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style6 {
	font-size: 22px;
	color: #FF0000;
}
.style9 {color: #FFFF00; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
         <h1 class="style5"><a href="index.html" class="style6 style10">Optimized Data Fusion With Scheduled Rest Periods for Enhanced Smart Agriculture via Blockchain Integration
</a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide2.jpg"  width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide3.jpg"  width="960" height="314" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="rss"></div>
      <div class="menu_nav">
        <ul>
          <li><span><a href="index.html">Home</a></span></li>
          <li><span><a href="Admin.jsp">Admin</a></span></li>
          <li class="active"><span><a href="User.html">User</a></span></li>
          <li><span><a href="Register.html">Register</a></span></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Upload Datasets !!! </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p> 
		  
		  <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 
 
    <%@ page import ="java.io.FileNotFoundException" %>  
    <%@ page import ="java.io.IOException" %>  
    <%@ page import ="java.util.Iterator" %>  
    <%@ page import ="java.util.ArrayList" %> 
    <%@ page import="org.apache.poi.xssf.usermodel.*" %>
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
    <%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>
    <%@ page import="org.apache.poi.ss.usermodel.Cell" %>
    <%@ page import ="org.apache.poi.ss.usermodel.Row"%>
    <%@ page import="org.apache.poi.ss.usermodel.Sheet" %>
    <%@ page import="org.apache.poi.ss.usermodel.Workbook" %>
    <%@ page import ="org.apache.poi.xssf.usermodel.XSSFWorkbook" %>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
	
	
 
	
    <%
    try{
        
		String fname=request.getParameter("fname");
		
		String sql="delete from datasets";
		Statement stmt = connection.createStatement();
		stmt.executeUpdate(sql);
		
	   String Fid,
fs1,
fd,
cr,
yr,
sn,
temp,
hum,
ph,
rf,
ar,
au,
pr,
pu,
sa,
rp,
hc;
		
       connection.setAutoCommit(false);
       PreparedStatement pstm = null ;
       FileInputStream input = new FileInputStream(getServletContext().getRealPath("/")+"//"+fname);
	  
	  
       POIFSFileSystem fs = new POIFSFileSystem(input); //creating a new poi reference to the given excel file
       HSSFWorkbook wb = new HSSFWorkbook(fs);
       HSSFSheet sheet = wb.getSheetAt(0);
       Row row;
       Statement st=connection.createStatement();
       for(int i=1; i<=sheet.getLastRowNum(); i++){  //points to the starting of excel i.e excel first row
           row = (Row) sheet.getRow(i);  //sheet number
		   
		   
	   		      if( row.getCell(0)==null) { Fid = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else Fid = row.getCell(0).toString();   //else copies cell data to name variable
 
                  if( row.getCell(1)==null) { fs1 = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else fs1 = row.getCell(1).toString();   //else copies cell data to name variable
				  
				  if( row.getCell(2)==null) { fd = "0";}
				  else fd = row.getCell(2).toString();
				  
				  if( row.getCell(3)==null) { cr = "0";}
				  else cr = row.getCell(3).toString();
				  
				  if( row.getCell(4)==null) { yr = "0";}
				  else yr = row.getCell(4).toString();
				  
				  if( row.getCell(5)==null) { sn= "0";}
				  else sn = row.getCell(5).toString();
				  
				  if( row.getCell(6)==null) { temp = "0";}
				  else temp= row.getCell(6).toString();
				  
				  if( row.getCell(7)==null) { hum= "0";}
				  else hum = row.getCell(7).toString();
				  
				  if( row.getCell(8)==null) { ph= "0";}
				  else ph = row.getCell(8).toString();
				  
				  if( row.getCell(9)==null) { rf= "0";}
				  else rf = row.getCell(9).toString();
				  
				  if( row.getCell(10)==null) { ar= "0";}
				  else ar = row.getCell(10).toString();
				  
				  if( row.getCell(11)==null) { au= "0";}
				  else au = row.getCell(11).toString();
				  
				  if( row.getCell(12)==null) { pr= "0";}
				  else pr = row.getCell(12).toString();
				  
				  if( row.getCell(13)==null) { pu= "0";}
				  else pu = row.getCell(13).toString();
				  
				  if( row.getCell(14)==null) { sa= "0";}
				  else sa = row.getCell(14).toString();
				  
				  if( row.getCell(15)==null) { rp= "0";}
				  else rp = row.getCell(15).toString();
				  
				
						 
				   //out.print(val);
				  
				
					String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(rp));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1= bi1.toString(16);
					
					
					String filename1="filename1.txt";
      				PrintStream p1 = new PrintStream(new FileOutputStream(filename1));
					p1.print(new String(sa));
			
					MessageDigest md1 = MessageDigest.getInstance("SHA1");
					FileInputStream fis111 = new FileInputStream(filename1);
					DigestInputStream dis11 = new DigestInputStream(fis111, md1);
					BufferedInputStream bis11 = new BufferedInputStream(dis11);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b11 = bis11.read();
						if (b11 == -1)
							break;
					}
 
					BigInteger bi11 = new BigInteger(md1.digest());
					String spl11 = bi11.toString();
					String h11= bi11.toString(16);	
					
					
					
String sq="INSERT INTO datasets(Fid,fs,fd,cr,yr,sn,temp,hum,ph,rf,ar,au,pr,pu,sa,rp,hc,hc1)
VALUES('"+Fid+"','"+fs1+"','"+fd+"','"+cr+"','"+yr+"','"+sn+"','"+temp+"','"+hum+"','"+ph+"','"+rf+"','"+ar+"','"+au+"','"+pr+"','"+pu+"','"+sa+"','"+rp+"','"+h1+"','"+h11+"')";                   
 
           pstm = (PreparedStatement) connection.prepareStatement(sq);
           pstm.execute();
           
       }
       connection.commit();
       pstm.close();
       connection.close();
       input.close();
 
   }catch(Exception e){
       out.println(e);
   }
 
 
%>
		  <h2>Datasets Imported Successfully !!!</h2>
		  
		  
				</p>
                <p align="right"><a href="usermain.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li></li>
            <li><a href="index.html">Log Out</a><br />
            </li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
   
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Find Scheduled Rest Periods Type</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style6 {color: #000000; font-size: 16px; }
.style10 {color: #FFFF00}
.style12 {color: #FF0000}
.style14 {font-size: 24px; color: #FF0000; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1"><span class="style12">Optimized Data Fusion With Scheduled Rest Periods for Enhanced Smart Agriculture via Blockchain Integration</span><br />
        </a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="293" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div align="center"><span class="style14">Find Scheduled Rest Period Type By Hashcode!!!          </span>
          </div>
          <div class="post_content">
		  <p>&nbsp;</p>
          
					
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
 
 <table width="531" height="129" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>
         	 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>Fid</strong></span></th>	
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong> FormerState</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>FormetDistrict</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>Crop</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>Year</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>Season</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>temperature</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>humidity</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>ph</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>rainfall</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>Area</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>AreaUnits	</strong></span></th>	
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>Production</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>ProductionUnits</strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>Smart_Agriculture </strong></span></th>		
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>Rest Periods</strong></span></th>	
 <th height="35" bgcolor="#FFFF00"><span class="style1 style5 style6 style10 style10"><strong>Hash Code</strong></span></th>	
        </tr>
 
 
 
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18;
int i=0,count=0;
try 
{

   String Type=request.getParameter("type");
  
  
 
  
   					 String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(Type));
			
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
					
				  
  
 
	String query="select * from datasets where hc='"+h1+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
	
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		s6=rs.getString(7);
		s7=rs.getString(8);
		s8=rs.getString(9);
		s9=rs.getString(10);
		s10=rs.getString(11);
		s11=rs.getString(12);
		s12=rs.getString(13);
		s13=rs.getString(14);
		s14=rs.getString(15);
		s15=rs.getString(16);
		s16=rs.getString(17);
		s17=rs.getString(18);
				
			
		%>
					
							 <tr>
			  
              <td  width="87" height="31" align="center" valign="middle" ><span class="style7 style12"><strong>
                <%out.println(s1);%>
              </strong></span></td>
              <td  width="89" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s2);%>
              </strong></span></td>
              <td  width="111" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s3);%>
              
              </strong></span></td>
              <td  width="185" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s4);%>
              
              </strong></span></td>
              <td  width="108" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s5);%>
              </strong></span></td>
              <td  width="71" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s6);%>
              </strong></span></td>
			   <td  width="87" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s7);%>
               </strong></span></td>
			   <td  width="64" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s8);%>
               </strong></span></td>
			   <td  width="89" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s9);%>
               </strong></span></td>
			   <td  width="79" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s10);%>
               </strong></span></td>
			   <td  width="94" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s11);%>
               </strong></span></td>
			   <td  width="82" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s12);%>
               </strong></span></td>
			  <td  width="82" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s13);%>
              </strong></span></td>
			  <td  width="82" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s14);%>
              </strong></span></td>
			  <td  width="82" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s15);%>
              </strong></span></td>
			  <td  width="82" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s16);%>
              </strong></span></td>
			  <td  width="82" height="31" align="center" valign="middle"><span class="style7 style12"><strong>
                <%out.println(s17);%>
              </strong></span></td>
            </tr>
					<%
						
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
</table>
          
		  </div>
          <div class="clr"></div>
        </div>
         <p class="pages"><a href="usermain.jsp">Back</a></p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
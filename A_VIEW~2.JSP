<style type="text/css">
<!--
.style1 {color: #FFFF00}
.style5 {font-weight: bold}
.style6 {font-weight: bold}
.style7 {font-weight: bold}
-->
</style>
			<table width="2000" height="110" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>			  

 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Fid</strong></span></th>	
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong> FormerState</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>FormetDistrict</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Crop</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Year</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Season</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>temperature</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>humidity</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>ph</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>rainfall</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Area</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>AreaUnits	</strong></span></th>	
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Production</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>ProductionUnits</strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Smart_Agriculture </strong></span></th>		
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Rest Periods</strong></span></th>	
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Hash Code</strong></span></th>	


        </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18;
int i=0,rank=0;
try 
{
	String query="select * from datasets"; 
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
			 
              <td  width="87" height="31" align="center" valign="middle" ><span class="style7">
                <%out.println(s1);%>
              </span></td>
              <td  width="89" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s2);%>
              </span></td>
              <td  width="111" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s3);%>
              
              </span></td>
              <td  width="185" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s4);%>
              
              </span></td>
              <td  width="108" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s5);%>
              </span></td>
              <td  width="71" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s6);%>
              </span></td>
			   <td  width="87" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s7);%>
              </span></td>
			   <td  width="64" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s8);%>
              </span></td>
			   <td  width="89" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s9);%>
              </span></td>
			   <td  width="79" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s10);%>
              </span></td>
			   <td  width="94" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s11);%>
              </span></td>
			   <td  width="82" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s12);%>
              </span></td>
			  <td  width="82" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s13);%>
              </span></td>
			  <td  width="82" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s14);%>
              </span></td>
			  <td  width="82" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s15);%>
              </span></td>
			  <td  width="82" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s16);%>
              </span></td>
			  <td  width="82" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s17);%>
              </span></td>
            </tr>
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
				</p>
          
        
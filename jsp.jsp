<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>JSP Page</title> 
</head>
 <body>
 
<%       
Connection conn =null;

 try
{ 
    
    Date v=new Date(); 
    DateFormat format = new SimpleDateFormat("HH:mm:ss");
    String tim=format.format(v.getTime());
 String slot=request.getParameter("slot"); 
 String nop=request.getParameter("noplate");
 String own=request.getParameter("name"); 
 String gen=request.getParameter("gender");
 
Class.forName("com.mysql.jdbc.Driver"); 
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/carpark","root","root"); 
Statement s=conn.createStatement(); 
ResultSet r; 
int i= s.executeUpdate("insert into LOT values('"+own+"','"+slot+"','"+nop+"','"+gen+"','"+tim+"')"); 

if(conn!=null)
{ 
    out.print("<br><br><h2>Connected succesfully</h2>"); 
} 
}
catch(Exception e)
 { 
out.print(e); 
}
%>
<br> 
<br>  
<a href = "calci.html">CALCULATE COST</a>
<br> 
<br>
<a href = "jspp.jsp">VIEW DATABASE</a>
 </body> 
</html>
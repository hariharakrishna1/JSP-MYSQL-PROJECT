<%@page import="java.sql.*" %> 
<%@page import="javax.sql.*"%> 
<%@page import="java.lang.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>JSP Page</title> 
</head> 
<body>
<table border='1'> 
<th>ownername</th> 
<th>slot number </th> 
<th>numberplate</th>
<th>gender</th> 
<th>Entry time</th> 
<%
Connection conn=null;
 try
{ 
Class.forName("com.mysql.jdbc.Driver"); 
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/carpark","root","root"); 
Statement x=conn.createStatement(); 
ResultSet st; st=x.executeQuery("SELECT * FROM lot"); 
while(st.next()) 
{ 
%> 
<tr> 
<td><%=st.getString("name")%></td> 
<td><%=st.getString("slot")%></td>
<td><%=st.getString("numplate")%></td> 
<td><%=st.getString("gender")%></td> 
<td><%=st.getString("time")%></td> 
</tr> 
<% 
} 
}
catch(Exception e) 
{ 
out.print(e); 
}
%>
</table>
 <br> <br> <a href="index.html">RETURN BACK</a> 
</body> 
</html>
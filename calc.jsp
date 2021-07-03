<%-- 
    Document   : calc
    Created on : Jun 6, 2021, 10:22:09 PM
    Author     : harih
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%        
        int hour =Integer.parseInt(request.getParameter("h"));
        int min =Integer.parseInt(request.getParameter("m"));
        float cost=0;
        if(hour>=0)
     {
         if(min>0)
         {
             cost = (float)(hour*10 + min*1);
         }
         
         if(min==0)
         {
             cost=0;
         }
     }
    out.print("COST = "+cost);
        
        %>
        <a href = "jspp.jsp">VIEW DATABASE</a>
</html>

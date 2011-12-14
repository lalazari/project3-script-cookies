<%-- 
    Document   : cookies
    Created on : Dec 14, 2011, 10:03:39 PM
    Author     : marina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookies</title>
    </head>
    <body>
 <%       String caffeQ= request.getParameter("cafeQuantity");
        
        
            if(caffeQ==null){
                 caffeQ="0";
         
      }
        Cookie cafeCookie = new Cookie("cafe", caffeQ);
        cafeCookie.setMaxAge(15*60);
        response.addCookie(cafeCookie);
        
        
   %>
 <% 
 String suggarQ= request.getParameter("sugarQuantity");
        
        
            if(suggarQ==null){
                 suggarQ="0";
         
      }
        Cookie sugarCookie = new Cookie("suggar", suggarQ);
        sugarCookie.setMaxAge(15*60);
        response.addCookie(sugarCookie);
        
        
%>   
<% 
 String watterQ= request.getParameter("WaterQuantity");
        
        
            if(watterQ==null){
                 watterQ="0";
         
      }
        Cookie waterCookie = new Cookie("watter", watterQ);
        waterCookie.setMaxAge(15*60);
        response.addCookie(waterCookie);
        
        response.sendRedirect("index.jsp");
%>   
    
    
    
    
    
    
    
    
    </body>
</html>

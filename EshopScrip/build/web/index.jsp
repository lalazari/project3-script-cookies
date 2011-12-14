
<%@ page import="java.util.*" %>
<%@ page import="listen.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<% 
  

  Cookie myCookie = null;
  Cookie myCookie2 = null;
  Cookie myCookie3 = null;
  Handler cafe=(Handler)getServletContext().getAttribute("cafe"); 
  String cafeQ= request.getParameter("cafeQuantity");
  Handler sugar=(Handler)getServletContext().getAttribute("sugar");
  String sugarQ = request.getParameter("sugarQuantity");
  Handler water=(Handler)getServletContext().getAttribute("water");
  String waterQ = request.getParameter("WaterQuantity");
  
   if(session.isNew()){
         Cookie cafeCookie = new Cookie("caffe", "0");
        cafeCookie.setMaxAge(15*60);
        myCookie=cafeCookie;
        response.addCookie(cafeCookie);
        
        Cookie sugarCookie = new Cookie("sugar", "0");
        sugarCookie.setMaxAge(15*60);
        myCookie2=sugarCookie;
        response.addCookie(sugarCookie);
        
        Cookie waterCookie = new Cookie("watter", "0");
        waterCookie.setMaxAge(15*60);
        myCookie3=waterCookie;
        response.addCookie(waterCookie);
        
         
      }
      
   
  String cookieName = "cafe";
    Cookie cookies [] = request.getCookies ();
    
    if (cookies != null)
    {
        for (int i = 0; i < cookies.length; i++) 
        {
            if (cookies [i].getName().equals (cookieName))
            {
                
                myCookie = cookies[i];
                
                session.setAttribute("theCafe", myCookie.getValue());
                    break;
             }
        }
    }
    
    String cookieName2 = "suggar";
    Cookie cookies2 [] = request.getCookies ();
    
    if (cookies2 != null)
    {
        for (int i = 0; i < cookies2.length; i++) 
        {
            if (cookies2 [i].getName().equals (cookieName2))
            {
                
                myCookie2 = cookies2[i];
                
                session.setAttribute("theSugar", myCookie2.getValue());
                    break;
             }
        }
    }
    
     String cookieName3 = "watter";
    Cookie cookies3 [] = request.getCookies ();
    
    if (cookies3 != null)
    {
        for (int i = 0; i < cookies3.length; i++) 
        {
            if (cookies3 [i].getName().equals (cookieName3))
            {
                
                myCookie3 = cookies3[i];
                
                session.setAttribute("theWater", myCookie3.getValue());
                    break;
             }
        }
    }
             
    
    
   
   
%>

  
   
    


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <h4>Eshop</h4>
    
    <form name="input form" method="post" action="cookies.jsp">
        
    <table border="2" cellspacin23g="0" cellpadding="7"> 
    <tr>
      <th>Item</th>
      <th>Price</th>
      <th>Quantity</th>
      <th>Total</th>
    </tr>
    <tr>
      <td>Cafe</td>
      <td>     
          <% 
        out.println(cafe.getPrice()); 
        float getcafe=Float.parseFloat(cafe.getPrice());
  
        %> 

        </td>
      <td><input type="text" name="cafeQuantity"  size="7" value="<%=myCookie.getValue()%>" /></td>
      <td><% int ca=Integer.parseInt(myCookie.getValue());  out.println(ca*(getcafe));  %></td>
    </tr>
    <tr>
      <td>Sugar</td>
      <td><% 
        out.println(sugar.getPrice()); 
        float getsugar=Float.parseFloat(sugar.getPrice());
        %>
      </td>
      <td><input type="text" name="sugarQuantity" size="7" value="<%=myCookie2.getValue()%>" /></td>
      <td><% int ca2=Integer.parseInt(myCookie2.getValue());  out.println(ca2*(getsugar)); %></td>
    </tr>
    <tr>
      <td>Water</td>
      <td><%  
        out.println(water.getPrice());
        float getwater=Float.parseFloat(water.getPrice());
            %>
      </td>
      <td><input type="text" name="WaterQuantity" size="7" value="<%=myCookie3.getValue()%>" /></td>
      <td><% int ca3=Integer.parseInt(myCookie3.getValue());  out.println(ca3*(getwater)); %></td>
    </tr>
    <tr>
      <td>Total</td>
      <td></td>
      <td></td>
      <td><% float total;
                //total=((((Integer)session.getAttribute("theCafe"))*(getcafe)) + (((Integer)session.getAttribute("theSugar"))*(getsugar)) + (((Integer)session.getAttribute("theWater"))*(getwater)));
      
      //out.println(total);  %></td>
    </tr>

    </table>

    <input type="submit"  value="CHECK" name="CHECK"  />
    </form>
    
    
   
</html>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 try {
           
Class.forName("com.mysql.jdbc.Driver");
    
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register2","root","pras");
 
PreparedStatement st = con.prepareStatement("insert into register4 values(?,?,?,?,?);");
 
st.setString(1, String.valueOf(request.getParameter("Name")));
        
st.setString(2, String.valueOf(request.getParameter("Content")));
          
st.setString(3, String.valueOf(request.getParameter("Quantity")));
  
st.setString(4, String.valueOf(request.getParameter("price")));
       
st.setString(5, String.valueOf(request.getParameter("Rating")));
  
st.executeUpdate();
        
st.close();

con.close();

response.sendRedirect("studentViewAll.jsp");
     
   }
 catch (Exception e) 
{

e.printStackTrace();

}
%>


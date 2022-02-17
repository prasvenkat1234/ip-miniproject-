<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body bgcolor = aquamarine>
<table border="1">
<tr>
<th>Name</th>
<th>content</th>
<th>quantity</th>
<th>price</th>
<th>Rating</th>
</tr>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/register2","root","pras");
PreparedStatement st = con.prepareStatement("Select * from register4");
ResultSet rs = st.executeQuery();
while(rs.next())
{
<tr>           
<td><%=rs.getString("Name")%></td>
        
<td><%=rs.getString("Content")%></td>
       
<td><%=rs.getString("Quantity")%></td>
            
<td><%=rs.getString("price")%></td>

<td><%=rs.getString("Rating")%></td>
</tr> 
}
}
catch (Exception e)
{
         
e.printStackTrace();
     
}
      
%>   
</table>  
</body>
</html>

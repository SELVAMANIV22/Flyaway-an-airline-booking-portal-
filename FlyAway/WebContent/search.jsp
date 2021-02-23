<%@page import="com.flyaway.connection.*" %>
  <%@page import="java.sql.*" %>
  
  
  
  
  
  
  
        <table width=50% border=1>
      <caption>available flights</caption>
  <% 
  
  
  String source = request.getParameter("source");
  String destination = request.getParameter("destination");
  String deparature= request.getParameter("deparature");
  String url="jdbc:mysql://localhost:3306/flyaway";
  String username="root";
  String password="rootpassword";
   String sql= "select * from flightdetails where source=? and destination=? and deparature=? ";
  try {
	  
	     DbConnection conn= new DbConnection(url,username,password);
      PreparedStatement st = conn.getConnection().prepareStatement(sql);
      st.setString(1,source);
      st.setString(2, destination);
      st.setString(3, deparature);
	ResultSet rs= st.executeQuery();
	  ResultSetMetaData rsmd = (ResultSetMetaData) rs.getMetaData();
	     int  total= rsmd.getColumnCount();
	 
	 for(int i=1;i<=total;i++)
	 {
		 %>
		 <th> <%= rsmd.getColumnName(i)%></th>
		 <% 
	 }
	while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%= rs.getString(4)%></td>
		<td><%= rs.getString(5)%></td>
		<td><%= rs.getString(6)%></td>
		<td><%= rs.getString(7)%></td>
		<td><a href="book.jsp">BOOK NOW</a></td>
		
	  </tr>

	  <%
	}
	
	  
  }
  catch (Exception e){
	  out.println(e);
	  
  }
  
  
   %>
     </table>
   
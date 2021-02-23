<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>  
<%
  if(session.getAttribute("uname")==null)
  {
	  response.sendRedirect("admin.jsp");
  }

%>


    <h2> Welcome to admin page </h2>
 
       <form action="addDetails" method="post"> 
       <fieldset> 
          <legend>fill the details</legend>
       Flight no :<input type="text" name="fno"><br><br>
       Flight Name:<input type="text" name="fname"><br><br>
       source :<input type="text" name="source"><br><br> 
       destination :<input type="text" name="destination"><br><br>
       deparature(dd/mm/yyyy) :<input type="text" name="deparature"><br><br>
         Arrive (dd/mm/yyyy):<input type="text" name="arrive"><br><br>
            
         price :<input type="text" name="price"><br><br>
           <input type="submit" value="add"> <br>
           </fieldset> 
           </form>
           <a href="admin.jsp">Logout</a>
           <a href="changePassword.jsp">Change password</a>
</body>
</html>
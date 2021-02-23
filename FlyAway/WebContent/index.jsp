<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FLYAWAY</title>
</head>
<body>
  <h2>WELCOME TO FLYAWAY</h2> <h4>(No1 Flight Booking portal)</h4> <br><br>
      <form method="post" action="search.jsp">
      
       FROM :<input type="text" name="source" placeholder="eg:chennai" required >  
        To  :<input type="text" name="destination" placeholder="eg:bangalore" required>
        Deparature(dd/mm/yyy) :<input type="date" name="deparature"  required>
       No of Passangers <select name="passanger" id="passanger">
        <option value="1">1 </option>
         <option value="2">2 </option>
          <option value="3">3 </option>
           <option value="4">4 </option>
           <option value="5">5 </option>
            <option value="6">6 </option>
             <option value="7">7 </option>
              <option value="8">8 </option>
               <option value="9">9 </option>
       </select>
          <input type="submit" value="search"> <br><br> 
      </form>
   
<a href="admin.jsp">ADMIN</a> <br><br><br>
 <footer> &copy; Copyright 2021 all rights flyaway.com by Selvamani Venkatesan

</body>
</html>
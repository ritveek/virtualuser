<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
     <%@page import="com.users.SaveUsers"%>
      <%@page import="com.users.Users"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>modify/users</title>
    <style>
        *{
            padding: 0px;
            margin: 3px;
        }
        #heading{
            background-color: aqua;
            text-align: center;
            padding: 10px;
        }
        #button{
            width: 110px;
            height: 60px;
            margin: 100px 0px 20px 180px;
            background-color: rgb(214, 230, 73);
            cursor: pointer;
            border-radius: 20px;
        }
        table,th,td {
           border:  2px solid magenta;
           border-collapse: collapse;
            text-align: center;
         }
        #box{
            margin-top: 10px;
            max-width: 600px;
            height: 200px;
            margin-left: 100px;
            padding: 5px 5px;

         }
    </style>
</head>
<body>


    <h2 id="heading"> MODIFY  USERS </h2><br><br>

    <%
                   		response.setContentType("text/html");
                   		 int uid = Integer.parseInt(request.getParameter("uid"));
                            SaveUsers s= new SaveUsers();
                         ResultSet rs=s.getd(uid);
                        String name=null;
                        String surname=null;
                        String phone=null;
                        while(rs.next()){
                                                         name=rs.getString(1);
                                                         surname=rs.getString(2);
                                                         phone=rs.getString(3);
                                                }




            	%>
<form action="update" method="post"> <!-- Change UpdateUserServlet to your actual servlet URL -->
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="<%= name %>"><br>

    <label for="surname">Surname:</label>
    <input type="text" id="surname" name="surname" value="<%= surname %>"><br>

    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" value="<%= phone%>"><br>

    <!-- Hidden input field to store the user ID -->
    <input type="hidden" name="id" value="<%= uid %>">
<br><br>
    <input type="submit" value="Update User">
</form>

</body>
</html>





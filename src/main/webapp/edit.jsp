
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
     <%@page import="com.users.SaveUsers"%>
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

     <h4 > Select user to edit </h4>

    <form  action="update.jsp" method="post">
        <div id="box">
                    <table style="width:70%; height:100%">
                        <tr >
                            <th>Id</th>
                            <th>Name</th>
                            <th>Surname</th>
                            <th>Phone</th>
                            <th>Select</th>
                        </tr>

                       <%
                       		response.setContentType("text/html");
                            SaveUsers s= new SaveUsers();
                            ResultSet rs=s.getUsers();

                       		while(rs.next()){

                       			out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td><input type='radio' name='uid' value='"+rs.getString(1)+"'</td></tr>");
                       		}

                	%>
    </table>


        <br><br>

       <input type="submit" id="button" value="Edit">
       </div>
       </form>


</body>
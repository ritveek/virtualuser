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
input[type=text],label{
            width: 50%;
            padding: 10px;
            display: flex;
            margin: auto;
}
#box{
            margin-top: 40px;
            border: 5px solid black;
            max-width: 500px;
            height: 400px;
            margin-left: 150px;
            padding: 10px 10px;

        }


    </style>
</head>
<body>
    <h2 id="heading"> MODIFY USERS </h2><br><br>
    <div id="box">
        <div> <h2>Add User :</h2><br></div>
            <form  action="save" method="post">
                <label for="name">Name:</label>
                <input type="text"  name="name" placeholder=" name"><br>
                <label for="email">Surname:</label>
                <input type="text" name="surname"><br>
                <label for="password">Phone:</label>
                <input type="text" name="phone"><br>
                <input type="submit" id="button" value="Save">

            </form>

            <h4><a href="index.jsp">Back</a> </h4> </div>



</body>
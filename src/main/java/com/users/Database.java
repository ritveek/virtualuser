package com.users;
import java.sql.*;
public class Database {
    Connection con;
    PreparedStatement pst;

    public Database(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = "jdbc:mysql://192.168.1.22:3306/emp";
            con = DriverManager.getConnection(url, "gudd", "Guddu@234");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

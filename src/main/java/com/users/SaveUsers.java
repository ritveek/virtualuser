package com.users;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SaveUsers {

        Database db= new Database();

        public boolean save(Users u) {
            boolean b=false;
            try{
                String q="insert into users(name,surname,phone) values(?,?,?)";
                PreparedStatement st=db.con.prepareStatement(q);
                st.setString(1, u.getName());
                st.setString(2, u.getSurname());
                st.setInt(3, u.getPhone());
                st.executeUpdate();
                b=true;

            }catch (Exception e) {
                e.printStackTrace();
            }
            return b;
        }

    public ResultSet getUsers() throws SQLException {
        ResultSet rs;
        try {
            String q1 = "Select * from users";
            Statement st=db.con.createStatement();
            rs = st.executeQuery(q1);

            return rs;
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }

    }

    public ResultSet getd(int id) throws SQLException {
        ResultSet rs;
        try {
            String q1 = "Select name,surname,phone from users where id ='"+id+"'";
            Statement st=db.con.createStatement();
            rs = st.executeQuery(q1);
            return rs;
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }

    }

    public void update(String name, String surname, int phone,int id) throws SQLException {
        ResultSet rs;

            try {

                String query ="update users SET name = ?, surname = ?, phone = ? WHERE id = ?";
                PreparedStatement st=db.con.prepareStatement(query);

                st.setString(1,name);
                st.setString(2,surname);
                st.setInt(3,phone);
                st.setInt(4,id);
                st.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }

    }
}

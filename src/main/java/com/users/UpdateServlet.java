package com.users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;


/**
 * Servlet implementation class
 */
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {

    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name=request.getParameter("name");
        String surname=request.getParameter("surname");
        int phone=Integer.parseInt( request.getParameter("phone"));
        int id=Integer.parseInt( request.getParameter("id"));

        response.setContentType("text/html");
        Users u= new Users(name,surname,phone);
        SaveUsers s=new SaveUsers();
        try {
            s.update(name,surname,phone,id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect("view.jsp");

    }
}
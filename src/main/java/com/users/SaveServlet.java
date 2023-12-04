package com.users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;




    @WebServlet("/save")
    public class SaveServlet extends HttpServlet {

        public SaveServlet() {
            super();

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

            response.setContentType("text/html");
            Users u= new Users(name,surname,phone);
            SaveUsers s=new SaveUsers();
            s.save(u);

            response.sendRedirect("view.jsp");

    }
}
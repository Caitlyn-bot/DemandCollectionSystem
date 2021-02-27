package web.servlet;

import dao.Dao;
import domain.Role;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addRoleServlet")
public class addRoleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String rolename = request.getParameter("rolename");
        Role role =new Role(rolename,1,1,1,1,0,0,0,0);
        Dao dao=new Dao();
        boolean result = dao.addRole(role);
        if (result){
            response.sendRedirect("rolemangeServlet");
            response.getWriter().println("<script type='text/javascript'> alert('添加成功')</script>");
        }else {
            response.getWriter().println("<script type='text/javascript'> alert('添加失败')</script>");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

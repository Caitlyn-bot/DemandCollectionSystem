package web.servlet;

import dao.Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteRoleServlet")
public class deleteRoleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int roleid=Integer.parseInt(request.getParameter("deleteid"));
        Dao dao=new Dao();
        boolean result = dao.deleteRoleByRoleid(roleid);
        if (result){
            response.getWriter().println("<script type='text/javascript'> alert('角色删除成功')</script>");
            response.sendRedirect("rolemangeServlet");
        }else {
            response.getWriter().println("<script type='text/javascript'> alert('角色删除失败')</script>");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

package web.servlet;

import dao.Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateRolenameServlet")
public class updateRolenameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int roleid = Integer.parseInt(request.getParameter("eid"));
        String rolename=request.getParameter("erolename");
        Dao dao=new Dao();
        boolean result = dao.updateRolenameByRoleid(roleid, rolename);
        if (result){
            response.getWriter().println("<script type='text/javascript'> alert('角色名修改成功')</script>");
            response.sendRedirect("rolemangeServlet");
        }else {
            response.getWriter().println("<script type='text/javascript'> alert('角色名修改失败')</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

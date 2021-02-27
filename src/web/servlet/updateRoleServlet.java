package web.servlet;

import dao.Dao;
import domain.Role;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateRoleServlet")
public class updateRoleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int roleid = Integer.parseInt(request.getParameter("roleid"));
        String rolename=request.getParameter("rolename");
        int selfmsg = Integer.parseInt(request.getParameter("selfmsg"));
        int updatepwd = Integer.parseInt(request.getParameter("updatepwd"));
        int addDemand = Integer.parseInt(request.getParameter("addDemand"));
        int demandMange = Integer.parseInt(request.getParameter("demandMange"));
        int xssh = Integer.parseInt(request.getParameter("xssh"));
        int bmsh = Integer.parseInt(request.getParameter("bmsh"));
        int report = Integer.parseInt(request.getParameter("report"));
        int rolemange = Integer.parseInt(request.getParameter("rolemange"));
        Role role=new Role(roleid,rolename,selfmsg,updatepwd,addDemand,demandMange,xssh,bmsh,report,rolemange);
        Dao dao=new Dao();
        boolean result = dao.updateRoleByRoleid(role);
        if (result){
            response.getWriter().println("<script type='text/javascript'> alert('权限修改成功')</script>");
            response.sendRedirect("rolemangeServlet");
        }else {
            response.getWriter().println("<script type='text/javascript'> alert('权限修改失败')</script>");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

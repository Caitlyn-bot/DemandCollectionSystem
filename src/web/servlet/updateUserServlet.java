package web.servlet;

import dao.Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateUserServlet")
public class updateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int euserid = Integer.parseInt(request.getParameter("euserid"));
        int erole = Integer.parseInt(request.getParameter("erole"));
        Dao dao=new Dao();
        boolean result = dao.updateUserByUserid(euserid, erole);
        if (result){
            response.getWriter().println("<script type='text/javascript'> alert('角色修改成功')</script>");
            response.sendRedirect("usermangeServlet");
        }else {
            response.getWriter().println("<script type='text/javascript'> alert('角色修改失败')</script>");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

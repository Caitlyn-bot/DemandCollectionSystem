package web.servlet;

import dao.Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/stopUserServlet")
public class stopUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int userid=Integer.parseInt(request.getParameter("userid"));
        Dao dao=new Dao();
        boolean result = dao.stopUserByUserid(userid);
        if (result){
            response.getWriter().println("<script type='text/javascript'> alert('角色暂停成功')</script>");
            response.sendRedirect("usermangeServlet");
        }else {
            response.getWriter().println("<script type='text/javascript'> alert('角色暂停失败')</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

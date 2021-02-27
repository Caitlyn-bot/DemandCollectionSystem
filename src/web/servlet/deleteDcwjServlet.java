package web.servlet;

import dao.Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteDcwjServlet")
public class deleteDcwjServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int wjid=Integer.parseInt(request.getParameter("deleteWJID"));
        Dao dao=new Dao();
        boolean result = dao.deleteWjByWJID(wjid);
        if (result){
            response.getWriter().println("<script type='text/javascript'> alert('删除成功')</script>");
            response.sendRedirect("mangeDemandServlet");
        }else {
            response.getWriter().println("<script type='text/javascript'> alert('删除失败')</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

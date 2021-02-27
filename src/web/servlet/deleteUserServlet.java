package web.servlet;

import dao.Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteUserServlet")
public class deleteUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        int deleteUserid=Integer.parseInt(request.getParameter("deleteUserid"));
        Dao dao=new Dao();
        boolean result = dao.deleteUserByUserid(deleteUserid);
        if (result){
            response.getWriter().println("<script type='text/javascript'> alert('用户删除成功')</script>");
            response.sendRedirect("usermangeServlet");
        }else {
            response.getWriter().println("<script type='text/javascript'> alert('用户删除失败')</script>");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

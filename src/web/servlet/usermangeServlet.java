package web.servlet;

import dao.Dao;
import domain.PageBean;
import domain.Role;
import domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/usermangeServlet")
public class usermangeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //1.获取参数
        String currentPage = request.getParameter("currentPage");//当前页码
        String rows = request.getParameter("rows");//每页显示条数

        if(currentPage == null || "".equals(currentPage)){

            currentPage = "1";
        }

        if(rows == null || "".equals(rows)){
            rows = "10";
        }

        Dao dao=new Dao();
        List<Role> roles = dao.queryAllRole();
        //List<User> users = dao.queryAllUsers();
        PageBean<User> pb= dao.queryUserByPage(currentPage,rows);
        request.setAttribute("roles",roles);
        request.setAttribute("pb",pb);
        request.getRequestDispatcher("/user/usermange.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

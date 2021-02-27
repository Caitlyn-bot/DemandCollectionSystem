package web.servlet;

import dao.Dao;
import domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addUserServlet")
public class addUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//1.设置编码
        request.setCharacterEncoding("utf-8");
        //2.获取参数
        String username=request.getParameter("addusername");
        String pwd=request.getParameter("addpassword");
        String JGMC=request.getParameter("addJGMC");
        String realname=request.getParameter("addrealname");
        String SFZH=request.getParameter("addSFZH");
        String YZBM=request.getParameter("addYZBM");
        String YDDH=request.getParameter("addYDDH");
        //3.封装对象
        User user = new User(username,pwd,JGMC,realname,SFZH,YZBM,YDDH,4,1);

        Dao dao=new Dao();
        boolean result = dao.addUser(user);
        if (result){
            response.getWriter().println("<script type='text/javascript'> alert('用户添加成功')</script>");
            response.sendRedirect("usermangeServlet");
        }else {
            response.getWriter().println("<script type='text/javascript'> alert('用户添加失败')</script>");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

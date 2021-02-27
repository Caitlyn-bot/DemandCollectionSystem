package web.servlet;

import dao.Dao;
import domain.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.设置编码
        request.setCharacterEncoding("utf-8");
        //2.获取参数
        String username=request.getParameter("username");
        String pwd=request.getParameter("password");
        String JGMC=request.getParameter("JGMC");
        String realname=request.getParameter("realname");
        String SFZH=request.getParameter("SFZH");
        String YZBM=request.getParameter("YZBM");
        String YDDH=request.getParameter("YDDH");
        //3.封装对象
        User user = new User(username,pwd,JGMC,realname,SFZH,YZBM,YDDH,4,1);

        Dao dao=new Dao();
        boolean result = dao.addUser(user);
        if (result){
            request.setAttribute("login_msg","注册成功");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }else {
            request.setAttribute("register_msg","注册失败");
            return;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

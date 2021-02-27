package web.servlet;

import dao.Dao;
import domain.Role;
import domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //获取用户填写的验证码
        String code = request.getParameter("code");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //通过session信息获取生成的验证码
        HttpSession session=request.getSession();
        String checkcode_server = (String) session.getAttribute("CHECKCODE_SERVER");
        //确保验证码是一次性的
        session.removeAttribute("CHECKCODE_SERVER");
        if (!checkcode_server.equalsIgnoreCase(code)){
            //忽略大小写,验证码不正确
            //提示信息，跳转登录页面
            request.setAttribute("login_msg","验证码错误");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
            return;
        }

        Dao dao=new Dao();
        User user = dao.queryUserByUsernameAndPwd(username, password);
        if (user!=null){
            if (String.valueOf(user.getStatus()).equals("1")){
                //用户不为空且用户状态为可用
                session.setAttribute("user",user);
                response.sendRedirect(request.getContextPath()+"/index.jsp");
            }else {
                //登录失败,账户被停用
                request.setAttribute("login_msg","您的账户已经被停用");
                request.getRequestDispatcher("/login.jsp").forward(request,response);
            }


        }else {
            //登录失败
            request.setAttribute("login_msg","用户名或密码错误");
            request.getRequestDispatcher("/login.jsp").forward(request,response);

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

package web.servlet;

import dao.Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updatePwdServlet")
public class updatePwdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userid=Integer.parseInt(request.getParameter("userid"));
        String password = request.getParameter("newpassword");
        Dao dao=new Dao();
        boolean result = dao.updateUserPwdByid(userid, password);
        if (result){
            request.getRequestDispatcher("/exitServlet").forward(request,response);
        }else {
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

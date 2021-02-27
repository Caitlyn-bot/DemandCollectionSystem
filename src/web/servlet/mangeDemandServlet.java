package web.servlet;

import dao.Dao;
import domain.Dcwjxx;
import domain.Gmjjfl;
import domain.Xkfl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/mangeDemandServlet")
public class mangeDemandServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Dao dao=new Dao();
        List<Dcwjxx> dcwjxxs = dao.queryAllDcwjxx();
        List<Xkfl> xkfls = dao.queryAllXkfl();
        List<Gmjjfl> gmjjfls = dao.queryAllGmjjfl();
        request.setAttribute("dcwjxxs",dcwjxxs);
        request.setAttribute("xkfls",xkfls);
        request.setAttribute("gmjjfls",gmjjfls);
        request.getRequestDispatcher("/demand/mangeDemand.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

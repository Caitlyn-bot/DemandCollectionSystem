package web.servlet;

import dao.Dao;
import domain.GLCS;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/xsshServlet")
public class xsshServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int wjid=Integer.parseInt(request.getParameter("rWJID"));
        int sfsh = Integer.parseInt(request.getParameter("SFSH"));
        String xsscyj = request.getParameter("XSSCYJ");
        String bmmc = request.getParameter("GLCS");
        Dao dao=new Dao();
        GLCS glcs = dao.searchGlcsmc(bmmc);
        boolean result = dao.xssh(wjid, sfsh, xsscyj, glcs.getId());
        if (result){
            //response.getWriter().println("<script type='text/javascript'> alert('审核成功')</script>");
            request.getRequestDispatcher("/examine/xssh.jsp").forward(request,response);
        }else {
            response.getWriter().println("<script type='text/javascript'> alert('审核失败')</script>");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

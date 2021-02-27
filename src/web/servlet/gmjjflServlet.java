package web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import dao.Dao;
import domain.Gmjjfl;
import domain.Xkfl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/gmjjflServlet")
public class gmjjflServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int lastid = Integer.parseInt(request.getParameter("lastid"));
        Dao dao=new Dao();
        List<Gmjjfl> gmjjfls = dao.queryGmjjflByFather(lastid);
        response.setContentType("application/json;charset=utf-8");
        ObjectMapper mapper = new ObjectMapper();
        String gmjjfls_json = mapper.writeValueAsString(gmjjfls);
        response.getWriter().write(gmjjfls_json);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

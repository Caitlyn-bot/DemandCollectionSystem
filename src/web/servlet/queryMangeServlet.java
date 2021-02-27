package web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import dao.Dao;
import domain.Dcwjxx;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/queryMangeServlet")
public class queryMangeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int wjid=Integer.parseInt(request.getParameter("WJID"));
        Dao dao=new Dao();
        Dcwjxx dcwjxx = dao.queryDcwjById(wjid);
        response.setContentType("application/json;charset=utf-8");
        ObjectMapper mapper = new ObjectMapper();
        String dcwjxx_json = mapper.writeValueAsString(dcwjxx);
        response.getWriter().write(dcwjxx_json);
        System.out.println(dcwjxx_json);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

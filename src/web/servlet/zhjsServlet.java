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
import java.util.List;

@WebServlet("/zhjsServlet")
public class zhjsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String sql=request.getParameter("sql");
        Dao dao=new Dao();
        System.out.println(sql);
        List<Dcwjxx> dcwjxxes = dao.search(sql);
        response.setContentType("application/json;charset=utf-8");
        ObjectMapper mapper = new ObjectMapper();
        String dcwjxxes_json = mapper.writeValueAsString(dcwjxxes);
        response.getWriter().write(dcwjxxes_json);
        System.out.println(dcwjxxes_json);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

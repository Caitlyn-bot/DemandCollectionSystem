package web.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import dao.Dao;
import domain.Role;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/roleQueryServlet")
public class roleQueryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int roleid = Integer.parseInt(request.getParameter("roleid"));
        Dao dao=new Dao();
        Role role = dao.queryRoleById(roleid);
        response.setContentType("application/json;charset=utf-8");
        ObjectMapper mapper = new ObjectMapper();
        String role_json = mapper.writeValueAsString(role);
        System.out.println(role_json);
        response.getWriter().write(role_json);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/searchServlet")
public class searchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String sJGMC = request.getParameter("sJGMC");
        String sJSXQMC = request.getParameter("sJSXQMC");
        String sSZDY = request.getParameter("sSZDY");
        System.out.println(sSZDY);
        String sGKGLBM = request.getParameter("sGKGLBM");
        String sJGSX = request.getParameter("sJGSX");
        String sYJLX = request.getParameter("sYJLX");
        List<String> list=new ArrayList<String>();
        String sql = "select * from dcwjxx where SFSH=0 ";
        if(sJGMC!=null&& !sJGMC.trim().equals("")){
            sql+="and JGMC  like ? ";
            list.add("%"+sJGMC.trim()+"%");
        }
        if(sJSXQMC!=null&& !sJSXQMC.trim().equals("")){
            sql+="and JSXQMC  like ? ";
            list.add("%"+sJSXQMC.trim()+"%");
        }
        if(sSZDY!=null&& !sSZDY.trim().equals("")){
            sql+="and SZDY  like ? ";
            list.add("%"+sSZDY.trim()+"%");
        }
        if(sGKGLBM!=null&& !sGKGLBM.trim().equals("")){
            sql+="and GKGLBM  like ? ";
            list.add("%"+sGKGLBM.trim()+"%");
        }
        if(sJGSX!=null&& !sJGSX.trim().equals("")){
            sql+="and JGSX  like ? ";
            list.add("%"+sJGSX.trim()+"%");
        }
        if(sYJLX!=null&& !sYJLX.trim().equals("")){
            sql+="and YJLX  like ? ";
            list.add("%"+sYJLX.trim()+"%");
        }
        Dao dao=new Dao();
        System.out.println(sql);
        List<Dcwjxx> dcwjxxes = dao.search(list, sql);
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

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

@WebServlet("/fljsServlet")
public class fljsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String sfljs = request.getParameter("sfljs");
        String stj = request.getParameter("stj");
        String sjsyq = request.getParameter("sjsyq");
        String sXSSH = request.getParameter("sXSSH");
        String sBMSH = request.getParameter("sBMSH");
        List<String> list=new ArrayList<String>();
        String sql = "select * from dcwjxx where 1=1  ";
            if (sXSSH.equals("否")){
                sql+="and SFSH=0 ";
            }else if(sXSSH.equals("是")){
                sql+="and SFSH=1 ";
            }
            if (sBMSH.equals("否")){
                sql+="and BMSFSH=0 ";
            }else if (sBMSH.equals("是")){
                sql+="and BMSFSH=1 ";
            }
        if(sjsyq.equals("模糊查询")){

            if(sfljs.trim().equals("机构全称")){
                sql+="and JGMC  like ? ";
                list.add("%"+stj.trim()+"%");
            }else if(sfljs.trim().equals("技术需求名称")){
                sql+="and JSXQMC  like ? ";
                list.add("%"+stj.trim()+"%");
            }else if(sfljs.trim().equals("所在地域")){
                sql+="and SZDY  like ? ";
                list.add("%"+stj.trim()+"%");
            }else if(sfljs.trim().equals("归口管理部门")){
                sql+="and GKGLBM  like ? ";
                list.add("%"+stj.trim()+"%");
            }else if(sfljs.trim().equals("机构属性")){
                sql+="and JGSX  like ? ";
                list.add("%"+stj.trim()+"%");
            }else if(sfljs.trim().equals("科技活动类型")){
                sql+="and YJLX  like ? ";
                list.add("%"+stj.trim()+"%");
            }
        }else if (sjsyq.equals("精确查询")){
            if(sfljs.trim().equals("机构全称")){
                sql+="and JGMC  = ? ";
                list.add(stj.trim());
            }else if(sfljs.trim().equals("技术需求名称")){
                sql+="and JSXQMC  = ? ";
                list.add(stj.trim());
            }else if(sfljs.trim().equals("所在地域")){
                sql+="and SZDY  = ? ";
                list.add(stj.trim());
            }else if(sfljs.trim().equals("归口管理部门")){
                sql+="and GKGLBM  = ? ";
                list.add(stj.trim());
            }else if(sfljs.trim().equals("机构属性")){
                sql+="and JGSX  = ? ";
                list.add(stj.trim());
            }else if(sfljs.trim().equals("科技活动类型")){
                sql+="and YJLX  = ? ";
                list.add(stj.trim());
            }
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

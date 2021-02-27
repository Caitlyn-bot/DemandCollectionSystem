package web.servlet;

import dao.Dao;
import domain.Dcwjxx;
import util.DateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addDemandServlet")
public class addDemandServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String JGMC=request.getParameter("JGMC");
        String GKGLBM = request.getParameter("GKGLBM");
        String TXDZ = request.getParameter("TXDZ");
        String SZDY = request.getParameter("SZDY");
        String DWWZ = request.getParameter("DWWZ");
        String DZYX = request.getParameter("DZYX");
        String FRDB = request.getParameter("FRDB");
        String YZBM = request.getParameter("YZBM");
        String LXR = request.getParameter("LXR");
        String GDDH = request.getParameter("GDDH");
        String YDDH = request.getParameter("YDDH");
        String CZ = request.getParameter("CZ");
        String JGSX = request.getParameter("JGSX");
        String JGJJ = request.getParameter("JGJJ");
        String JSXQMC = request.getParameter("JSXQMC");
        int QSXQNF = Integer.parseInt(request.getParameter("QSXQNF"));
        int JZXQNF = Integer.parseInt(request.getParameter("JZXQNF"));
        String ZDKJXQGS1 = request.getParameter("ZDKJXQGS1");
        String ZDKJXQGS2 = request.getParameter("ZDKJXQGS2");
        String ZDKJXQGS3 = request.getParameter("ZDKJXQGS3");
        String GJZ1 = request.getParameter("GJZ1");
        String GJZ2 = request.getParameter("GJZ2");
        String GJZ3 = request.getParameter("GJZ3");
        String GJZ4 = request.getParameter("GJZ4");
        String GJZ5 = request.getParameter("GJZ5");
        int NTRZJE=0;
        if (!request.getParameter("NTRZJE").equals("")){

            NTRZJE = Integer.parseInt(request.getParameter("NTRZJE"));
        }
        String JSXQHZMS = request.getParameter("JSXQHZMS");
        String QTJSMS = request.getParameter("QTJSMS");
        String YJLX = request.getParameter("YJLX");

        String XKFL1 = request.getParameter("XKFL1");
        String XKFL2 = request.getParameter("XKFL2");
        String XKFL3 = request.getParameter("XKFL3");
        String [] XQJSSSLYs = request.getParameterValues("XQJSSSLY[]");
        String XQJSSSLY=null;
        if (XQJSSSLYs!=null){
            for(int i=0;i<XQJSSSLYs.length;i++)
            {
                if(i==0) {
                    XQJSSSLY=XQJSSSLYs[0];
                }else {
                    XQJSSSLY+="///"+XQJSSSLYs[i];
                }
            }
        }

        String XQJSYYHY1 = request.getParameter("XQJSYYHY1");
        String XQJSYYHY2 = request.getParameter("XQJSYYHY2");
        String XQJSYYHY3 = request.getParameter("XQJSYYHY3");

        Dao dao=new Dao();
        DateUtil dateUtil=new DateUtil();
        int WJID = dateUtil.getId();
        Dcwjxx dcwjxx=new Dcwjxx();
        dcwjxx.setWJID(WJID);
        dcwjxx.setJGMC(JGMC);
        dcwjxx.setGKGLBM(GKGLBM);
        dcwjxx.setTXDZ(TXDZ);
        dcwjxx.setSZDY(SZDY);
        dcwjxx.setDWWZ(DWWZ);
        dcwjxx.setDZYX(DZYX);
        dcwjxx.setFRDB(FRDB);
        dcwjxx.setYZBM(YZBM);
        dcwjxx.setLXR(LXR);
        dcwjxx.setGDDH(GDDH);
        dcwjxx.setYDDH(YDDH);
        dcwjxx.setCZ(CZ);
        dcwjxx.setJGSX(JGSX);
        dcwjxx.setJGJJ(JGJJ);
        dcwjxx.setJSXQMC(JSXQMC);
        dcwjxx.setQSXQNF(QSXQNF);
        dcwjxx.setJZXQNF(JZXQNF);
        dcwjxx.setZDKJXQGS(ZDKJXQGS1 +"///"+ZDKJXQGS2+"///"+ZDKJXQGS3);
        dcwjxx.setGJZ(GJZ1+"///"+GJZ2+"///"+GJZ3+"///"+GJZ4+"///"+GJZ5);
        dcwjxx.setNTRZJE(NTRZJE);
        dcwjxx.setJSXQHZMS(JSXQHZMS);
        dcwjxx.setQTJSMS(QTJSMS);
        dcwjxx.setYJLX(YJLX);
        dcwjxx.setXKFL(XKFL3);
        dcwjxx.setXQJSSSLY(XQJSSSLY);
        dcwjxx.setXQJSYYHY(XQJSYYHY3);
        boolean result = dao.addDemand(dcwjxx);
        if(result){
            response.getWriter().println("<script type='text/javascript'> alert('添加成功')</script>");
            response.sendRedirect("LoadServlet");
        }else {
            response.getWriter().println("<script type='text/javascript'> alert('添加失败')</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}

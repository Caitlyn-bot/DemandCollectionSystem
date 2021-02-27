package domain;

public class Dcwjxx {
    private int WJID;//问卷编号
    private int SFSH;//形式审核是否审核通过标志
    private String XSSCYJ;//形式审核意见
    private int BMSFSH;//部门是否审核通过
    private String BMSHTYJ;//部门审核意见
    private int GLCS;//管理处室编码
    private String JGMC;//机构名称
    private String GKGLBM;//归口管理部门
    private String TXDZ;//通讯地址
    private String SZDY;//所在地域
    private String DWWZ;//单位网址
    private String DZYX;//电子邮箱
    private String FRDB;//法人代表
    private String YZBM;//邮政编码
    private String LXR;//联系人
    private String GDDH;//固定电话
    private String YDDH;//移动电话
    private String CZ;//传真
    private String JGSX;//机构属性
    private String JGJJ;//机构简介
    private String JSXQMC;//技术需求名称
    private int QSXQNF;//起始需求年份
    private int JZXQNF;//截止需求年份
    private String ZDKJXQGS;//重大科技需求概述
    private String GJZ;//关键字
    private int NTRZJE;//计划总投资
    private String JSXQHZMS;//技术需求合作模式
    private String QTJSMS;//其他技术描述
    private String YJLX;//研究类型
    private String XKFL;//学科分类
    private String XQJSSSLY;//需求技术所属领域
    private String XQJSYYHY;//需求技术应用行业


    public Dcwjxx() {
    }

    public Dcwjxx(int WJID, int SFSH, String XSSCYJ, int BMSFSH, String BMSHTYJ, int GLCS, String JGMC, String GKGLBM, String TXDZ, String SZDY, String DWWZ, String DZYX, String FRDB, String YZBM, String LXR, String GDDH, String YDDH, String CZ, String JGSX, String JGJJ, String JSXQMC, int QSXQNF, int JZXQNF, String ZDKJXQGS, String GJZ, int NTRZJE, String JSXQHZMS, String QTJSMS, String YJLX, String XKFL, String XQJSSSLY, String XQJSYYHY) {
        this.WJID = WJID;
        this.SFSH = SFSH;
        this.XSSCYJ = XSSCYJ;
        this.BMSFSH = BMSFSH;
        this.BMSHTYJ = BMSHTYJ;
        this.GLCS = GLCS;
        this.JGMC = JGMC;
        this.GKGLBM = GKGLBM;
        this.TXDZ = TXDZ;
        this.SZDY = SZDY;
        this.DWWZ = DWWZ;
        this.DZYX = DZYX;
        this.FRDB = FRDB;
        this.YZBM = YZBM;
        this.LXR = LXR;
        this.GDDH = GDDH;
        this.YDDH = YDDH;
        this.CZ = CZ;
        this.JGSX = JGSX;
        this.JGJJ = JGJJ;
        this.JSXQMC = JSXQMC;
        this.QSXQNF = QSXQNF;
        this.JZXQNF = JZXQNF;
        this.ZDKJXQGS = ZDKJXQGS;
        this.GJZ = GJZ;
        this.NTRZJE = NTRZJE;
        this.JSXQHZMS = JSXQHZMS;
        this.QTJSMS = QTJSMS;
        this.YJLX = YJLX;
        this.XKFL = XKFL;
        this.XQJSSSLY = XQJSSSLY;
        this.XQJSYYHY = XQJSYYHY;
    }

    public int getWJID() {
        return WJID;
    }

    public void setWJID(int WJID) {
        this.WJID = WJID;
    }

    public int getSFSH() {
        return SFSH;
    }

    public void setSFSH(int SFSH) {
        this.SFSH = SFSH;
    }

    public String getXSSCYJ() {
        return XSSCYJ;
    }

    public void setXSSCYJ(String XSSCYJ) {
        this.XSSCYJ = XSSCYJ;
    }

    public int getBMSFSH() {
        return BMSFSH;
    }

    public void setBMSFSH(int BMSFSH) {
        this.BMSFSH = BMSFSH;
    }

    public String getBMSHTYJ() {
        return BMSHTYJ;
    }

    public void setBMSHTYJ(String BMSHTYJ) {
        this.BMSHTYJ = BMSHTYJ;
    }

    public int getGLCS() {
        return GLCS;
    }

    public void setGLCS(int GLCS) {
        this.GLCS = GLCS;
    }

    public String getJGMC() {
        return JGMC;
    }

    public void setJGMC(String JGMC) {
        this.JGMC = JGMC;
    }

    public String getGKGLBM() {
        return GKGLBM;
    }

    public void setGKGLBM(String GKGLBM) {
        this.GKGLBM = GKGLBM;
    }

    public String getTXDZ() {
        return TXDZ;
    }

    public void setTXDZ(String TXDZ) {
        this.TXDZ = TXDZ;
    }

    public String getSZDY() {
        return SZDY;
    }

    public void setSZDY(String SZDY) {
        this.SZDY = SZDY;
    }

    public String getDWWZ() {
        return DWWZ;
    }

    public void setDWWZ(String DWWZ) {
        this.DWWZ = DWWZ;
    }

    public String getDZYX() {
        return DZYX;
    }

    public void setDZYX(String DZYX) {
        this.DZYX = DZYX;
    }

    public String getFRDB() {
        return FRDB;
    }

    public void setFRDB(String FRDB) {
        this.FRDB = FRDB;
    }

    public String getYZBM() {
        return YZBM;
    }

    public void setYZBM(String YZBM) {
        this.YZBM = YZBM;
    }

    public String getLXR() {
        return LXR;
    }

    public void setLXR(String LXR) {
        this.LXR = LXR;
    }

    public String getGDDH() {
        return GDDH;
    }

    public void setGDDH(String GDDH) {
        this.GDDH = GDDH;
    }

    public String getYDDH() {
        return YDDH;
    }

    public void setYDDH(String YDDH) {
        this.YDDH = YDDH;
    }

    public String getCZ() {
        return CZ;
    }

    public void setCZ(String CZ) {
        this.CZ = CZ;
    }

    public String getJGSX() {
        return JGSX;
    }

    public void setJGSX(String JGSX) {
        this.JGSX = JGSX;
    }

    public String getJGJJ() {
        return JGJJ;
    }

    public void setJGJJ(String JGJJ) {
        this.JGJJ = JGJJ;
    }

    public String getJSXQMC() {
        return JSXQMC;
    }

    public void setJSXQMC(String JSXQMC) {
        this.JSXQMC = JSXQMC;
    }

    public int getQSXQNF() {
        return QSXQNF;
    }

    public void setQSXQNF(int QSXQNF) {
        this.QSXQNF = QSXQNF;
    }

    public int getJZXQNF() {
        return JZXQNF;
    }

    public void setJZXQNF(int JZXQNF) {
        this.JZXQNF = JZXQNF;
    }

    public String getZDKJXQGS() {
        return ZDKJXQGS;
    }

    public void setZDKJXQGS(String ZDKJXQGS) {
        this.ZDKJXQGS = ZDKJXQGS;
    }

    public String getGJZ() {
        return GJZ;
    }

    public void setGJZ(String GJZ) {
        this.GJZ = GJZ;
    }

    public int getNTRZJE() {
        return NTRZJE;
    }

    public void setNTRZJE(int NTRZJE) {
        this.NTRZJE = NTRZJE;
    }

    public String getJSXQHZMS() {
        return JSXQHZMS;
    }

    public void setJSXQHZMS(String JSXQHZMS) {
        this.JSXQHZMS = JSXQHZMS;
    }

    public String getQTJSMS() {
        return QTJSMS;
    }

    public void setQTJSMS(String QTJSMS) {
        this.QTJSMS = QTJSMS;
    }

    public String getYJLX() {
        return YJLX;
    }

    public void setYJLX(String YJLX) {
        this.YJLX = YJLX;
    }

    public String getXKFL() {
        return XKFL;
    }

    public void setXKFL(String XKFL) {
        this.XKFL = XKFL;
    }

    public String getXQJSSSLY() {
        return XQJSSSLY;
    }

    public void setXQJSSSLY(String XQJSSSLY) {
        this.XQJSSSLY = XQJSSSLY;
    }

    public String getXQJSYYHY() {
        return XQJSYYHY;
    }

    public void setXQJSYYHY(String XQJSYYHY) {
        this.XQJSYYHY = XQJSYYHY;
    }

    @Override
    public String toString() {
        return "Dcwjxx{" +
                "WJID=" + WJID +
                ", SFSH=" + SFSH +
                ", XSSCYJ='" + XSSCYJ + '\'' +
                ", BMSFSH=" + BMSFSH +
                ", BMSHTYJ='" + BMSHTYJ + '\'' +
                ", GLCS=" + GLCS +
                ", JGMC='" + JGMC + '\'' +
                ", GKGLBM='" + GKGLBM + '\'' +
                ", TXDZ='" + TXDZ + '\'' +
                ", SZDY='" + SZDY + '\'' +
                ", DWWZ='" + DWWZ + '\'' +
                ", DZYX='" + DZYX + '\'' +
                ", FRDB='" + FRDB + '\'' +
                ", YZBM='" + YZBM + '\'' +
                ", LXR='" + LXR + '\'' +
                ", GDDH='" + GDDH + '\'' +
                ", YDDH='" + YDDH + '\'' +
                ", CZ='" + CZ + '\'' +
                ", JGSX='" + JGSX + '\'' +
                ", JGJJ='" + JGJJ + '\'' +
                ", JSXQMC='" + JSXQMC + '\'' +
                ", QSXQNF=" + QSXQNF +
                ", JZXQNF=" + JZXQNF +
                ", ZDKJXQGS='" + ZDKJXQGS + '\'' +
                ", GJZ='" + GJZ + '\'' +
                ", NTRZJE=" + NTRZJE +
                ", JSXQHZMS='" + JSXQHZMS + '\'' +
                ", QTJSMS='" + QTJSMS + '\'' +
                ", YJLX='" + YJLX + '\'' +
                ", XKFL='" + XKFL + '\'' +
                ", XQJSSSLY='" + XQJSSSLY + '\'' +
                ", XQJSYYHY='" + XQJSYYHY + '\'' +
                '}';
    }
}

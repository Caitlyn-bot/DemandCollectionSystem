package domain;

public class User {
    private int userid;//用户编号
    private String username;//用户名
    private String pwd;//密码，大于等于6位
    private String JGMC;//机构名称
    private String realname;//真实姓名
    private String SFZH;//身份证号
    private String YZBM;//邮政编码
    private String YDDH;//移动电话
    private int role;//账户角色
    private int status;//用户状态：是否可用

    public User() {
    }

    public User(String username, String pwd, String JGMC, String realname, String SFZH, String YZBM, String YDDH, int role, int status) {
        this.username = username;
        this.pwd = pwd;
        this.JGMC = JGMC;
        this.realname = realname;
        this.SFZH = SFZH;
        this.YZBM = YZBM;
        this.YDDH = YDDH;
        this.role = role;
        this.status = status;
    }

    public User(int userid, String username, String pwd, String JGMC, String realname, String SFZH, String YZBM, String YDDH, int role, int status) {
        this.userid = userid;
        this.username = username;
        this.pwd = pwd;
        this.JGMC = JGMC;
        this.realname = realname;
        this.SFZH = SFZH;
        this.YZBM = YZBM;
        this.YDDH = YDDH;
        this.role = role;
        this.status = status;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getpwd() {
        return pwd;
    }

    public void setpwd(String pwd) {
        this.pwd = pwd;
    }

    public String getJGMC() {
        return JGMC;
    }

    public void setJGMC(String JGMC) {
        this.JGMC = JGMC;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getSFZH() {
        return SFZH;
    }

    public void setSFZH(String SFZH) {
        this.SFZH = SFZH;
    }

    public String getYZBM() {
        return YZBM;
    }

    public void setYZBM(String YZBM) {
        this.YZBM = YZBM;
    }

    public String getYDDH() {
        return YDDH;
    }

    public void setYDDH(String YDDH) {
        this.YDDH = YDDH;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "User{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", pwd='" + pwd + '\'' +
                ", JGMC='" + JGMC + '\'' +
                ", realname='" + realname + '\'' +
                ", SFZH='" + SFZH + '\'' +
                ", YZBM='" + YZBM + '\'' +
                ", YDDH='" + YDDH + '\'' +
                ", role=" + role +
                ", status=" + status +
                '}';
    }
}

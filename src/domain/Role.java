package domain;

public class Role {
    private int roleid;//角色编号
    private String rolename;//角色名称
    private int selfmsg;//个人信息
    private int updatepwd;//修改密码
    private int addDemand;//需求征集
    private int demandMange;//需求管理
    private int xssh;//形式审核
    private int bmsh;//部门审核
    private int report;//报表查询
    private int rolemange;//角色管理

    public Role() {
    }

    public Role(String rolename, int selfmsg, int updatepwd, int addDemand, int demandMange, int xssh, int bmsh, int report, int rolemange) {
        this.rolename = rolename;
        this.selfmsg = selfmsg;
        this.updatepwd = updatepwd;
        this.addDemand = addDemand;
        this.demandMange = demandMange;
        this.xssh = xssh;
        this.bmsh = bmsh;
        this.report = report;
        this.rolemange = rolemange;
    }

    public Role(int roleid, String rolename, int selfmsg, int updatepwd, int addDemand, int demandMange, int xssh, int bmsh, int report, int rolemange) {
        this.roleid = roleid;
        this.rolename = rolename;
        this.selfmsg = selfmsg;
        this.updatepwd = updatepwd;
        this.addDemand = addDemand;
        this.demandMange = demandMange;
        this.xssh = xssh;
        this.bmsh = bmsh;
        this.report = report;
        this.rolemange = rolemange;
    }

    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public int getSelfmsg() {
        return selfmsg;
    }

    public void setSelfmsg(int selfmsg) {
        this.selfmsg = selfmsg;
    }

    public int getUpdatepwd() {
        return updatepwd;
    }

    public void setUpdatepwd(int updatepwd) {
        this.updatepwd = updatepwd;
    }

    public int getAddDemand() {
        return addDemand;
    }

    public void setAddDemand(int addDemand) {
        this.addDemand = addDemand;
    }

    public int getDemandMange() {
        return demandMange;
    }

    public void setDemandMange(int demandMange) {
        this.demandMange = demandMange;
    }

    public int getXssh() {
        return xssh;
    }

    public void setXssh(int xssh) {
        this.xssh = xssh;
    }

    public int getBmsh() {
        return bmsh;
    }

    public void setBmsh(int bmsh) {
        this.bmsh = bmsh;
    }

    public int getReport() {
        return report;
    }

    public void setReport(int report) {
        this.report = report;
    }

    public int getRolemange() {
        return rolemange;
    }

    public void setRolemange(int rolemange) {
        this.rolemange = rolemange;
    }

    @Override
    public String toString() {
        return "Role{" +
                "roleid=" + roleid +
                ", rolename='" + rolename + '\'' +
                ", selfmsg=" + selfmsg +
                ", updatepwd=" + updatepwd +
                ", addDemand=" + addDemand +
                ", demandMange=" + demandMange +
                ", xssh=" + xssh +
                ", bmsh=" + bmsh +
                ", report=" + report +
                ", rolemange=" + rolemange +
                '}';
    }
}

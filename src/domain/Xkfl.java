package domain;

public class Xkfl {
    private int id;
    private int typeid;
    private String xkname;
    private String fatherid;

    public Xkfl() {
    }

    public Xkfl(int typeid, String xkname, String fatherid) {
        this.typeid = typeid;
        this.xkname = xkname;
        this.fatherid = fatherid;
    }

    public Xkfl(int id, int typeid, String xkname, String fatherid) {
        this.id = id;
        this.typeid = typeid;
        this.xkname = xkname;
        this.fatherid = fatherid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTypeid() {
        return typeid;
    }

    public void setTypeid(int typeid) {
        this.typeid = typeid;
    }

    public String getXkname() {
        return xkname;
    }

    public void setXkname(String xkname) {
        this.xkname = xkname;
    }

    public String getFatherid() {
        return fatherid;
    }

    public void setFatherid(String fatherid) {
        this.fatherid = fatherid;
    }

    @Override
    public String toString() {
        return "Xkfl{" +
                "id=" + id +
                ", typeid=" + typeid +
                ", xkname='" + xkname + '\'' +
                ", fatherid='" + fatherid + '\'' +
                '}';
    }
}

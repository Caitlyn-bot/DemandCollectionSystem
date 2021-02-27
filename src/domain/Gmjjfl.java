package domain;

public class Gmjjfl {
    private int id;
    private int typeid;
    private String flname;
    private int lastid;

    public Gmjjfl() {
    }

    public Gmjjfl(int typeid, String flname, int lastid) {
        this.typeid = typeid;
        this.flname = flname;
        this.lastid = lastid;
    }

    public Gmjjfl(int id, int typeid, String flname, int lastid) {
        this.id = id;
        this.typeid = typeid;
        this.flname = flname;
        this.lastid = lastid;
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

    public String getFlname() {
        return flname;
    }

    public void setFlname(String flname) {
        this.flname = flname;
    }

    public int getLastid() {
        return lastid;
    }

    public void setLastid(int lastid) {
        this.lastid = lastid;
    }

    @Override
    public String toString() {
        return "Gmjjfl{" +
                "id=" + id +
                ", typeid=" + typeid +
                ", flname='" + flname + '\'' +
                ", lastid=" + lastid +
                '}';
    }
}

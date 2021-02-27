package domain;

public class GLCS {
    private int id;
    private String bmmc;

    public GLCS() {
    }

    public GLCS(String bmmc) {
        this.bmmc = bmmc;
    }

    public GLCS(int id, String bmmc) {
        this.id = id;
        this.bmmc = bmmc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBmmc() {
        return bmmc;
    }

    public void setBmmc(String bmmc) {
        this.bmmc = bmmc;
    }

    @Override
    public String toString() {
        return "GLCS{" +
                "id=" + id +
                ", bmmc='" + bmmc + '\'' +
                '}';
    }
}

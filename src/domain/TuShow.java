package domain;

public class TuShow {
    private String typeName;
    private int TuNum;

    public TuShow() {
    }

    public TuShow(String typeName, int tuNum) {
        this.typeName = typeName;
        TuNum = tuNum;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public int getTuNum() {
        return TuNum;
    }

    public void setTuNum(int tuNum) {
        TuNum = tuNum;
    }

    @Override
    public String toString() {
        return "TuShow{" +
                "typeName='" + typeName + '\'' +
                ", TuNum=" + TuNum +
                '}';
    }
}

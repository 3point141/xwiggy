package food.xwiggy.model;

public class Quantity {

    private String abc;
    private String bcd;
    private String def;

    public Quantity(){

    }

    public Quantity(String abc, String bcd, String def) {
        this.abc = abc;
        this.bcd = bcd;
        this.def = def;
    }

    public String getabc() {
        return abc;
    }

    public void setabc(String abc) {
        this.abc = abc;
    }

    public String getbcd() {
        return bcd;
    }

    public void setbcd(String bcd) {
        this.bcd = bcd;
    }

    public String getdef() {
        return def;
    }

    public void setdef(String def) {
        this.def = def;
    }

    @Override
    public String toString() {
        return "Quantity{" +
                "abc='" + abc + '\'' +
                ", bcd='" + bcd + '\'' +
                ", def='" + def + '\'' +
                '}';
    }
}

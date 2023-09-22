package vn.edu.iuh.fit.www_lab01.models;

public enum Grant {
    disable(0),
    enable(1);

    private final int value;

    private Grant(int value) {
        this.value = value;
    }

    public int getGrantValue() {
        return value;
    }
}

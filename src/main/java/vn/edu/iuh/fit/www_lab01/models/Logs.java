package vn.edu.iuh.fit.www_lab01.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

import java.time.LocalDate;


public class Logs {

    private int id;

    private String account;
    private LocalDate login_time;
    private LocalDate logout_time;
    private String notes;

    public Logs(int id, String account, LocalDate login_time, LocalDate logout_time, String notes) {
        this.id = id;
        this.account = account;
        this.login_time = login_time;
        this.logout_time = logout_time;
        this.notes = notes;
    }

    public Logs() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public LocalDate getLogin_time() {
        return login_time;
    }

    public void setLogin_time(LocalDate login_time) {
        this.login_time = login_time;
    }

    public LocalDate getLogout_time() {
        return logout_time;
    }

    public void setLogout_time(LocalDate logout_time) {
        this.logout_time = logout_time;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    @Override
    public String toString() {
        return "Logs{" +
                "id=" + id +
                ", account=" + account +
                ", login_time=" + login_time +
                ", logout_time=" + logout_time +
                ", notes='" + notes + '\'' +
                '}';
    }
}

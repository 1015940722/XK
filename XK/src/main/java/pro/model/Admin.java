package pro.model;

import java.util.Date;

public class Admin {
    private Integer aId;

    private String aName;

    private String aUsername;

    private String aPassword;

    private Integer aRank;

    private Date aLasttime;

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName == null ? null : aName.trim();
    }

    public String getaUsername() {
        return aUsername;
    }

    public void setaUsername(String aUsername) {
        this.aUsername = aUsername == null ? null : aUsername.trim();
    }

    public String getaPassword() {
        return aPassword;
    }

    public void setaPassword(String aPassword) {
        this.aPassword = aPassword == null ? null : aPassword.trim();
    }

    public Integer getaRank() {
        return aRank;
    }

    public void setaRank(Integer aRank) {
        this.aRank = aRank;
    }

    public Date getaLasttime() {
        return aLasttime;
    }

    public void setaLasttime(Date aLasttime) {
        this.aLasttime = aLasttime;
    }
}
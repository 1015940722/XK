package pro.model;

import java.util.Date;

public class User {
    private Integer uId;

    private String uName;

    private String uUsername;

    private String uPassword;

    private String uImage;

    private Integer uIntegral;

    private String uEmail;

    private Integer uSum;

    private Integer uRank;

    private Integer groupId;

    private Date uDate;

    private String uContent;

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName == null ? null : uName.trim();
    }

    public String getuUsername() {
        return uUsername;
    }

    public void setuUsername(String uUsername) {
        this.uUsername = uUsername == null ? null : uUsername.trim();
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword == null ? null : uPassword.trim();
    }

    public String getuImage() {
        return uImage;
    }

    public void setuImage(String uImage) {
        this.uImage = uImage == null ? null : uImage.trim();
    }

    public Integer getuIntegral() {
        return uIntegral;
    }

    public void setuIntegral(Integer uIntegral) {
        this.uIntegral = uIntegral;
    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail == null ? null : uEmail.trim();
    }

    public Integer getuSum() {
        return uSum;
    }

    public void setuSum(Integer uSum) {
        this.uSum = uSum;
    }

    public Integer getuRank() {
        return uRank;
    }

    public void setuRank(Integer uRank) {
        this.uRank = uRank;
    }

    public Integer getGroupId() {
        return groupId;
    }

    public void setGroupId(Integer groupId) {
        this.groupId = groupId;
    }

    public Date getuDate() {
        return uDate;
    }

    public void setuDate(Date uDate) {
        this.uDate = uDate;
    }

    public String getuContent() {
        return uContent;
    }

    public void setuContent(String uContent) {
        this.uContent = uContent == null ? null : uContent.trim();
    }
}
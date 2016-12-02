package pro.model;

import java.util.Date;

public class Vedio {
    private Integer vId;

    private String vName;

    private String vPath;

    private Date vDate;

    private Integer vTime;

    private String vType;

    private String vImage;

    private String vContent;

    public Integer getvId() {
        return vId;
    }

    public void setvId(Integer vId) {
        this.vId = vId;
    }

    public String getvName() {
        return vName;
    }

    public void setvName(String vName) {
        this.vName = vName == null ? null : vName.trim();
    }

    public String getvPath() {
        return vPath;
    }

    public void setvPath(String vPath) {
        this.vPath = vPath == null ? null : vPath.trim();
    }

    public Date getvDate() {
        return vDate;
    }

    public void setvDate(Date vDate) {
        this.vDate = vDate;
    }

    public Integer getvTime() {
        return vTime;
    }

    public void setvTime(Integer vTime) {
        this.vTime = vTime;
    }

    public String getvType() {
        return vType;
    }

    public void setvType(String vType) {
        this.vType = vType == null ? null : vType.trim();
    }

    public String getvImage() {
        return vImage;
    }

    public void setvImage(String vImage) {
        this.vImage = vImage == null ? null : vImage.trim();
    }

    public String getvContent() {
        return vContent;
    }

    public void setvContent(String vContent) {
        this.vContent = vContent == null ? null : vContent.trim();
    }
}
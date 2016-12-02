package pro.model;

import java.util.Date;

public class Message {
    private Integer mId;

    private Date mDate;

    private String mContent;

    public Integer getmId() {
        return mId;
    }

    public void setmId(Integer mId) {
        this.mId = mId;
    }

    public Date getmDate() {
        return mDate;
    }

    public void setmDate(Date mDate) {
        this.mDate = mDate;
    }

    public String getmContent() {
        return mContent;
    }

    public void setmContent(String mContent) {
        this.mContent = mContent == null ? null : mContent.trim();
    }
}
package com.by.model;

import java.util.Date;

public class Meet {
    private Integer meetId;

    private String meetName;

    private Integer meetNumber;

    private Date meetDate;

    private String meetImg;

    public Integer getMeetId() {
        return meetId;
    }

    public void setMeetId(Integer meetId) {
        this.meetId = meetId;
    }

    public String getMeetName() {
        return meetName;
    }

    public void setMeetName(String meetName) {
        this.meetName = meetName == null ? null : meetName.trim();
    }

    public Integer getMeetNumber() {
        return meetNumber;
    }

    public void setMeetNumber(Integer meetNumber) {
        this.meetNumber = meetNumber;
    }

    public Date getMeetDate() {
        return meetDate;
    }

    public void setMeetDate(Date meetDate) {
        this.meetDate = meetDate;
    }

    public String getMeetImg() {
        return meetImg;
    }

    public void setMeetImg(String meetImg) {
        this.meetImg = meetImg == null ? null : meetImg.trim();
    }
}
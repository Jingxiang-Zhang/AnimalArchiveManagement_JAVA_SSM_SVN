package com.crud.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class AnimalFeedRecord implements Comparable<AnimalFeedRecord>{
    private Integer id;

    private Integer archivenumber;

    private String recorder;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date recorddate;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date enddate;

    private String statusbeforefeed;

    private String feedobject;

    private String feedprocess;
    
    private User user;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getArchivenumber() {
        return archivenumber;
    }

    public void setArchivenumber(Integer archivenumber) {
        this.archivenumber = archivenumber;
    }

    public String getRecorder() {
        return recorder;
    }

    public void setRecorder(String recorder) {
        this.recorder = recorder == null ? null : recorder.trim();
    }

    public Date getRecorddate() {
        return recorddate;
    }
    
    public void setRecorddate(Date recorddate) {
        this.recorddate = recorddate;
    }
    
    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }
    
    public String getStatusbeforefeed() {
        return statusbeforefeed;
    }

    public void setStatusbeforefeed(String statusbeforefeed) {
        this.statusbeforefeed = statusbeforefeed == null ? null : statusbeforefeed.trim();
    }

    public String getFeedobject() {
        return feedobject;
    }

    public void setFeedobject(String feedobject) {
        this.feedobject = feedobject == null ? null : feedobject.trim();
    }

    public String getFeedprocess() {
        return feedprocess;
    }

    public void setFeedprocess(String feedprocess) {
        this.feedprocess = feedprocess == null ? null : feedprocess.trim();
    }

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	//从写compareTo方法，实现排序接口
	@Override
    public int compareTo(AnimalFeedRecord animalFeedRecord) {
        return animalFeedRecord.getId().compareTo(this.getId());      
    }
}
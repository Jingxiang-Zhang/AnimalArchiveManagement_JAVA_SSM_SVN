package com.crud.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

//添加排序接口
public class ExperimentData implements Comparable<ExperimentData>{
    private Integer id;

    private Integer experimentnumber;

    private String experimenternumber;

    private String experimentpurpose;

    private String experimentlocation;

    private String experimentapproach;

    private String experimentrecord;

    private String experimentresult;

    private String experimentnote;
    
    //解决string转data的问题
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date experimentdate;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date enddate;
    
    private User user;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getExperimentnumber() {
        return experimentnumber;
    }

    public void setExperimentnumber(Integer experimentnumber) {
        this.experimentnumber = experimentnumber;
    }

    public String getExperimenternumber() {
        return experimenternumber;
    }

    public void setExperimenternumber(String experimenternumber) {
        this.experimenternumber = experimenternumber == null ? null : experimenternumber.trim();
    }

    public String getExperimentpurpose() {
        return experimentpurpose;
    }

    public void setExperimentpurpose(String experimentpurpose) {
        this.experimentpurpose = experimentpurpose == null ? null : experimentpurpose.trim();
    }

    public String getExperimentlocation() {
        return experimentlocation;
    }

    public void setExperimentlocation(String experimentlocation) {
        this.experimentlocation = experimentlocation == null ? null : experimentlocation.trim();
    }

    public String getExperimentapproach() {
        return experimentapproach;
    }

    public void setExperimentapproach(String experimentapproach) {
        this.experimentapproach = experimentapproach == null ? null : experimentapproach.trim();
    }

    public String getExperimentrecord() {
        return experimentrecord;
    }

    public void setExperimentrecord(String experimentrecord) {
        this.experimentrecord = experimentrecord == null ? null : experimentrecord.trim();
    }

    public String getExperimentresult() {
        return experimentresult;
    }

    public void setExperimentresult(String experimentresult) {
        this.experimentresult = experimentresult == null ? null : experimentresult.trim();
    }

    public String getExperimentnote() {
        return experimentnote;
    }

    public void setExperimentnote(String experimentnote) {
        this.experimentnote = experimentnote == null ? null : experimentnote.trim();
    }

    public Date getExperimentdate() {
        return experimentdate;
    }

    public void setExperimentdate(Date experimentdate) {
        this.experimentdate = experimentdate;
    }
    
    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	//从写compareTo方法，实现排序接口
	@Override
    public int compareTo(ExperimentData experimentData) {
        return experimentData.getId().compareTo(this.getId());      
    }
}
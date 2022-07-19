package com.crud.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class AnimalHealthRecord implements Comparable<AnimalHealthRecord>{
    private Integer id;

    private Integer archivenumber;

    private String recorder;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date recorddate;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date enddate;

    private String healthlevel;

    private String healthdescription;
    
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
    
    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public Date getRecorddate() {
        return recorddate;
    }

    public void setRecorddate(Date recorddate) {
        this.recorddate = recorddate;
    }

    public String getHealthlevel() {
        return healthlevel;
    }

    public void setHealthlevel(String healthlevel) {
        this.healthlevel = healthlevel == null ? null : healthlevel.trim();
    }

    public String getHealthdescription() {
        return healthdescription;
    }

    public void setHealthdescription(String healthdescription) {
        this.healthdescription = healthdescription == null ? null : healthdescription.trim();
    }
    
    @Override
	public String toString() {
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return "AnimalHealthRecord [archivenumber=" + archivenumber + ", recorder=" + recorder + ", healthdescription=" + healthdescription + ", recorddate=" + recorddate + ", enddate" + enddate + "]";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	//从写compareTo方法，实现排序接口
	@Override
    public int compareTo(AnimalHealthRecord animalHealthRecord) {
        return animalHealthRecord.getId().compareTo(this.getId());      
    }
}
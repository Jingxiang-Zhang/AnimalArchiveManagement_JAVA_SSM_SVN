package com.crud.bean;

import java.util.Date;

public class AdvertisingProtocolRecord {
    private Integer advertsagreeid;

    private String uid;

    private Integer archivenumber;

    private String responsibleperson;

    private String storeaddress;

    private Date businessdate;
    
    private User user;

    public Integer getAdvertsagreeid() {
        return advertsagreeid;
    }

    public void setAdvertsagreeid(Integer advertsagreeid) {
        this.advertsagreeid = advertsagreeid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    public Integer getArchivenumber() {
        return archivenumber;
    }

    public void setArchivenumber(Integer archivenumber) {
        this.archivenumber = archivenumber;
    }

    public String getResponsibleperson() {
        return responsibleperson;
    }

    public void setResponsibleperson(String responsibleperson) {
        this.responsibleperson = responsibleperson == null ? null : responsibleperson.trim();
    }

    public String getStoreaddress() {
        return storeaddress;
    }

    public void setStoreaddress(String storeaddress) {
        this.storeaddress = storeaddress == null ? null : storeaddress.trim();
    }

    public Date getBusinessdate() {
        return businessdate;
    }

    public void setBusinessdate(Date businessdate) {
        this.businessdate = businessdate;
    }

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
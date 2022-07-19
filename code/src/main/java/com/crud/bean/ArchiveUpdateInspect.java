package com.crud.bean;

import java.util.Date;

import javax.management.loading.PrivateClassLoader;

/*
 * 
 * 此内容为zjx在做档案更新操作的时候，记录的档案删除时候的删除申请记录类
 * 
 * 
 * */

public class ArchiveUpdateInspect {

	private Integer id;
	
	private Integer archiveType;

	private String dept;
	
	private String operatorId;
	
	private String operatorName;
	
	private Date submitDate;
	
	private String description;

	public ArchiveUpdateInspect(){}
	
	public ArchiveUpdateInspect(Integer archiveType, Integer id, String dept, String operatorId, String operatorName,
			Date submitDate, String description) {
		super();
		this.archiveType = archiveType;
		this.id = id;
		this.dept = dept;
		this.operatorId = operatorId;
		this.operatorName = operatorName;
		this.submitDate = submitDate;
		this.description = description;
	}

	public Integer getArchiveType() {
		return archiveType;
	}

	public void setArchiveType(Integer archiveType) {
		this.archiveType = archiveType;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getOperatorId() {
		return operatorId;
	}

	public void setOperatorId(String operatorId) {
		this.operatorId = operatorId;
	}

	public String getOperatorName() {
		return operatorName;
	}

	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}

	public Date getSubmitDate() {
		return submitDate;
	}

	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}

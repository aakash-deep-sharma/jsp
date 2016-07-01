package com.model;

import java.util.Date;
import java.util.List;

public class TeamResourceModel {
	private String projectName;
	private Integer teamId;
	private String teamName;
	private String teamStatus;
	private Date startDate;
	private Date endDate;
	private List<String>resourceNameList;
	

	public TeamResourceModel() {
		super();
	}


	public TeamResourceModel(String projectName, Integer teamId, String teamName, String teamStatus, Date startDate,
			Date endDate, List<String> resourceNameList) {
		super();
		this.projectName = projectName;
		this.teamId = teamId;
		this.teamName = teamName;
		this.teamStatus = teamStatus;
		this.startDate = startDate;
		this.endDate = endDate;
		this.resourceNameList = resourceNameList;
	}
	
	public Integer getTeamId() {
		return teamId;
	}
	public void setTeamId(Integer teamId) {
		this.teamId = teamId;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getTeamStatus() {
		return teamStatus;
	}
	public void setTeamStatus(String teamStatus) {
		this.teamStatus = teamStatus;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public List<String> getResourceNameList() {
		return resourceNameList;
	}
	public void setResourceNameList(List<String> resourceNameList) {
		this.resourceNameList = resourceNameList;
	}


	public String getProjectName() {
		return projectName;
	}



	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}


	@Override
	public String toString() {
		return "TeamResourceModel [projectName=" + projectName + ", teamId=" + teamId + ", teamName=" + teamName
				+ ", teamStatus=" + teamStatus + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", resourceNameList=" + resourceNameList + "]";
	}

	
}

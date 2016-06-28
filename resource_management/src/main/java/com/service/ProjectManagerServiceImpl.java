package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProjectDao;
import com.dao.ResourceDao;
import com.dao.TeamDao;
import com.model.Project;
import com.model.Resource;
import com.model.Team;

@Service
public class ProjectManagerServiceImpl implements ProjectManagerService{

	@Autowired
	private ProjectDao projectDao;
	@Autowired
	private TeamDao teamDao;
	@Autowired
	private ResourceDao resourceDao;
	
	public boolean allocateProjectToTeam(Team team,Project project) throws Exception
	{
		project = projectDao.getProjectById(project);
		team = teamDao.getTeamById(team);
		project.setTeam(team);
		projectDao.updateProject(project);
		teamDao.updateTeam(team);
		return true;
	}
	
	@Override
	public boolean addResourceToTeam(Resource resource, Team team) throws Exception {
		resource = resourceDao.getResource(resource);
		team = teamDao.getTeamById(team);
		resource.setTeam(team);
		resourceDao.updateResource(resource);
		return true;
	}

	@Override
	public boolean removeResourceFromTeam(Resource resource) throws Exception {
		resource = resourceDao.getResource(resource);
		resource.setTeam(null);
		resourceDao.updateResource(resource);
		return true;
	}

	@Override
	public boolean deallocateProjectfromTeam(Project project) throws Exception {
		project = projectDao.getProjectById(project);
		project.setTeam(null);
		projectDao.updateProject(project);
		return false;
	}

	@Override
	public boolean createTeam(Team team) throws Exception {
		teamDao.createTeam(team);
		return true;
	}
	
	@Override
	public boolean deleteTeam(Team team) throws Exception {
		teamDao.deleteTeam(team);
		return true;
	}

	@Override
	public Team updateTeam(Team team) throws Exception {
		teamDao.updateTeam(team);
		return team;
	}

	@Override
	public List<Team> listTeam() throws Exception {

		return teamDao.listTeam();
	}

	@Override
	public Team getTeamById(Team team) throws Exception {
		teamDao.getTeamById(team);
		return team;
	}

	@Override
	public boolean createProject(Project project) throws Exception {
		projectDao.createProject(project);
		return true;
	}

	@Override
	public boolean deleteProject(Project project) throws Exception {
		projectDao.deleteProject(project);
		return true;
	}

	@Override
	public Project updateProject(Project project) throws Exception {
		projectDao.updateProject(project);
		return project;
	}

	@Override
	public List<Project> listProject() throws Exception {
		
		return projectDao.listProject();
	}

	@Override
	public Project getProjectById(Project project) throws Exception {
		projectDao.getProjectById(project);
		return project;
	}

	

	
	
}

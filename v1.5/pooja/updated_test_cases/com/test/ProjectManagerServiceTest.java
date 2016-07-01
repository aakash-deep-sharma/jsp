package com.test;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProjectDaoImpl;
import com.dao.RsourceDaoImpl;
import com.dao.TeamDaoImpl;
import com.model.Project;
import com.model.Team;
import com.service.ProjectManagerServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/spring-servlet-test.xml")
@Transactional
public class ProjectManagerServiceTest {
	@Autowired
	ProjectManagerServiceImpl projectService;
	@Autowired
	ProjectDaoImpl projectDao;
	@Autowired
	TeamDaoImpl teamDao;
	@Autowired
	RsourceDaoImpl resourceDao;
	
	
	
	@Test
	@Rollback(value=true)
	public void TestallocateProjectToTeam() throws Exception {
		Project project;
		Team team;
		
		
		project=TestGetProjectById();
		team=TestGetTeamById();
		project.setTeam(team);
		TestUpdateProject();
		TestUpdateTeam();
		System.out.println("updated successfully");
			
	}
	
	public Project TestGetProjectById() throws Exception{
		Project project=new Project();
		project.setProjectId(1);
		Project project1= projectDao.getProjectById(project);
		System.out.println(project1.getProjectId()+" "+project1.getProjectName()+" "+project1.getTeam().getTeamName());
		return project1;
		}
	
	public Team TestGetTeamById() throws Exception{
		Team team1=new Team();
		team1.setTeamId(2);
		Team team= teamDao.getTeamById(team1);
		System.out.println(team.getTeamName());
		return team;
		}
	
	public void TestUpdateProject() throws Exception{
		
		
	/*	Team team=new Team();
			team.setTeamId(1);
			
			Team team1=teamDao.getTeamById(team);*/
			

			Project pr=new Project();
			pr.setProjectId(2);

			Project project=projectDao.getProjectById(pr);
			
			project.setProjectName("abc");
			

			projectDao.updateProject(project);
		}
	
	public void TestUpdateTeam() throws Exception{
		Team team= new Team();
		team.setTeamId(2);
		team.setTeamName("pqr");
		team.setTeamStatus("active");
		team.setStartDate(new Date());
		team.setEndDate(new Date());
		teamDao.updateTeam(team);
		
		
		
	}

}

package com.testCases;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import static org.junit.Assert.*;
import com.dao.TeamDaoImpl;
import com.model.Team;

public class TestLogic {
	@Autowired
	private TeamDaoImpl dao;
	@Test
	public void TestGetResource() throws Exception
	{
		
		Team team=new Team();
		team.setTeamId(1);
		System.out.println(dao.getTeamById(team));
		//assertEquals(new Team(), dao.getTeamById(team));
	}
}

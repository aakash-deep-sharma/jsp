package com.test;

import java.util.Date;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.dao.RoleDaoImpl;
import com.dao.RsourceDaoImpl;
import com.model.Resource;
import com.model.Role;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/spring-servlet-test.xml")
@Transactional
public class RoleDaoTest {

@Autowired
RsourceDaoImpl resourceDao;

@Autowired
RoleDaoImpl roleDao;

/*@Test
@Rollback(value=true)
public void TestCreateRole() throws Exception{
		Resource resource1=new Resource();
	resource1.setResourceId(2);

	Resource resource=resourceDao.getResource(resource1);
	Role role=new Role();
	//role.setRoleId(1);
	role.setRoleName("dev");
	role.setRoleType("core");
	role.setStartDate(new Date());
	role.setEndDate(new Date());
	role.setResource(resource);
	
	roleDao.createRole(role);


}
*/
/*
 * Don't test this method..
 * @Test
@Rollback(value=true)
public void TestUpdateRole() throws Exception{
	
	Resource resource1=new Resource();
	resource1.setResourceId(2);

	Resource resource=resourceDao.getResource(resource1);
	
	Role role=new Role();
	role.setRoleId(4);
	Role role1=roleDao.getRoleById(role);
	role1.setRoleName("expr");
	role1.setRoleType("sss");
	role1.setStartDate(new Date());
	role1.setEndDate(new Date());
	role1.setResource(resource);
	roleDao.updateRole(role1);
	



}*/


/*@Test
@Rollback(value=true)
public void TestDeleteRole() throws Exception{
		
	Resource resource1=new Resource();
	resource1.setResourceId(2);

	Resource resource=resourceDao.getResource(resource1);
	Role role=new Role();
	//role.setRoleId(2);
	role.setRoleName("dev");
	role.setRoleType("core");
	role.setStartDate(new Date());
	role.setEndDate(new Date());
	role.setResource(resource);
	
	roleDao.deleteRole(resource);

	
}
*/


 


}

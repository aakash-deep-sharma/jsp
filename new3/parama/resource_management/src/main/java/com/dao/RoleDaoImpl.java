package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.model.Resource;
import com.model.Role;

public class RoleDaoImpl implements RoleDao{

	@Autowired
	private SessionFactory factory;
	
	@Override
	public Role createRole(Role role) throws Exception {
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
	    session.save(role);
		tx.commit();
		session.close();
		return role;
	}

	@Override
	public boolean deleteRole(Resource resource) throws Exception {
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.createQuery("delete Role where resourceId = ?").setInteger(0, resource.getResourceId());
		tx.commit();
		session.close();
		return true;
	}

}

package com.dao;


import com.model.Resource;
import com.model.Role;

public interface RoleDao {

	public Role createRole(Role role)throws Exception;
	public boolean deleteRole(Resource resource)throws Exception;
	
}

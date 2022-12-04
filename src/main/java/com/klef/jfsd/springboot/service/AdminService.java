package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.User;

public interface AdminService
{
	public Admin checkadminlogin(String username,String password);


	public void deleteuser(int id);

	public List<User> getallUser();
}

package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.*;
public interface UserService
{
	public User addUser(User user);
	public User checkUserlogin(String uname,String pwd);
	public User viewUser(String uname);
}

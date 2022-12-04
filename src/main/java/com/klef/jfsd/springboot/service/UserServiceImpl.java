package com.klef.jfsd.springboot.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.*;
import com.klef.jfsd.springboot.repository.*;
@Service
public class UserServiceImpl implements UserService{
@Autowired
private UserRepository userRepository;
@Override
	public User addUser(User user) {
		return userRepository.save(user);
		
	}
@Override
public User checkUserlogin(String uname, String pwd) {
	
	return userRepository.checkuserlogin(uname, pwd);
}
@Override
public User viewUser(String uname)
{
	
	return userRepository.viewUser(uname);
}


}
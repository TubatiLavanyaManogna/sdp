package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.*;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private UserRepository userRepository;
	@Override
	public Admin checkadminlogin(String username, String password)
	{
		// TODO Auto-generated method stub
	   return adminRepository.checkadminlogin(username, password);
	}
	@Override
	public List<User> getallUser() {
		// TODO Auto-generated method stub
		return (List<User>) userRepository.findAll();
	}
	@Override
	public void deleteuser(int id) {
		userRepository.deleteById(id);
		
	}
}
package com.klef.jfsd.springboot.repository;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.*;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;

@Repository
public interface UserRepository extends CrudRepository<User, Integer>
{
	@Query("select u from User  u  where username=?1 and password=?2")
	public User checkuserlogin(String uname,String pwd);
	@Query("select u from User  u  where username=?1 ")
	public User viewUser(String uname);
}

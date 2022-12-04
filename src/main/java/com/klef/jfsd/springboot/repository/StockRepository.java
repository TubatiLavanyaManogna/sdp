package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.*;

public interface StockRepository extends CrudRepository<Stock, Integer>
{
	@Query("select n from Stock  n  where name=?1 ")
	public Stock viewStock(String sname);
	
	
	
     
}

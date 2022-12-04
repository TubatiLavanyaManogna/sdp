package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Stock;
import com.klef.jfsd.springboot.model.User;



public interface StockService 
{
	public Stock addStock(Stock stock);
	public Stock viewStock(String sname);
	public List<Stock> getallStock();
	public void deletestock(int id);
}

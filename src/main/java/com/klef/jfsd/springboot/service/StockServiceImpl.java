package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Stock;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.StockRepository;
@Service
public class StockServiceImpl implements StockService{

	private StockRepository stockRepository;
	
	
	public StockServiceImpl(StockRepository stockRepository) {
		super();
		this.stockRepository = stockRepository;
	}


	@Override
	public Stock addStock(Stock stock) {
		// TODO Auto-generated method stub
		return stockRepository.save(stock);
	}


	@Override
	public Stock viewStock(String sname) {
		// TODO Auto-generated method stub
		return stockRepository.viewStock(sname);
	}

	@Override
	  public List<Stock> getallStock() {
	    // TODO Auto-generated method stub
	    return (List<Stock>) stockRepository.findAll();
	  }
	@Override
	  public void deletestock(int id) {
	    // TODO Auto-generated method stub
	    stockRepository.deleteById(id);
	    
	  }

}

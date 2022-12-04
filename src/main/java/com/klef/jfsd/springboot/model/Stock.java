package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="stock")
public class Stock
{
	 @Id
	  @GeneratedValue
    private int id;
	 @Column(name="name",nullable=false)
    private String name;
	 @Column(name="catg",nullable=false)
    private String catg;
	 @Column(name="price",nullable=false)
    private double price;
	 @Column(name="qty",nullable=false)
    private int qty;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCatg() {
		return catg;
	}
	public void setCatg(String catg) {
		this.catg = catg;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}

	@Override
	public String toString() {
		return "Stock [id=" + id + ", name=" + name + ", catg=" + catg + ", price=" + price + ", qty=" + qty + "]";
	}
    
}


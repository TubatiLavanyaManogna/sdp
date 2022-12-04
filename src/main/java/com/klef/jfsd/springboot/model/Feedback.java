package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="feedback")
public class Feedback 
{
  @Id
  @GeneratedValue
  private int id;
  @Column(name="name",nullable=false)
  private String name;
  @Column(name="email",nullable=false)
  private String email;
  @Column(name="q1",nullable=false)
  private String q1;
  @Column(name="q2",nullable=false)
  private String q2;
  @Column(name="q3",nullable=false)
  private String q3;
  @Column(name="comment",nullable=false)
  private String comment;
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
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getQ1() {
    return q1;
  }
  public void setQ1(String q1) {
    this.q1 = q1;
  }
  public String getQ2() {
    return q2;
  }
  public void setQ2(String q2) {
    this.q2 = q2;
  }
  public String getQ3() {
    return q3;
  }
  public void setQ3(String q3) {
    this.q3 = q3;
  }
  public String getComment() {
    return comment;
  }
  public void setComment(String comment) {
    this.comment = comment;
  }
  @Override
  public String toString() {
    return "Feedback [id=" + id + ", name=" + name + ", email=" + email + ", q1=" + q1 + ", q2=" + q2 + ", q3=" + q3
        + ", comment=" + comment + "]";
  }

}
package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.repository.FeedbackRepository;

@Service
public class FeedbackServiceImpl implements FeedbackService {

  
  @Autowired
  private FeedbackRepository feedbackRepository;
  @Override
  public Feedback addFeeback(Feedback fbd) {
    // TODO Auto-generated method stub
    return feedbackRepository.save(fbd);
  }

}
package com.trainingmanagement.services;

import java.util.List;

public interface TrainingService 
{
    public List<String> getAllTraining();

    public void add(String trainig);

    public void delete(String trainig);

    public void deleteAll();	
}

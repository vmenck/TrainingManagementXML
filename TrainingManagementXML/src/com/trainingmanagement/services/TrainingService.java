package com.trainingmanagement.services;

import java.util.List;

import com.trainingmanagement.beans.Training;

public interface TrainingService 
{
    public List<Training> getAllTraining();

    public void add(Training trainig);

    public void delete(Training trainig);

    public void deleteAll();	
}

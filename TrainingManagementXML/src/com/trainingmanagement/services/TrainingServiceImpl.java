package com.trainingmanagement.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service("trainingService")
public class TrainingServiceImpl implements TrainingService 
{
	
	private static List<String> trainingList = new ArrayList<String>();

	@Override
	public List<String> getAllTraining() 
	{
		return trainingList;
	}

	@Override
	public void add(String trainig) 
	{
		trainingList.add(trainig);
	}

	@Override
	public void delete(String trainig) 
	{
        if (trainingList.contains(trainig)) 
        {
        	trainingList.remove(trainig);
        }
	}

	@Override
	public void deleteAll() 
	{
		trainingList.clear();
	}

}

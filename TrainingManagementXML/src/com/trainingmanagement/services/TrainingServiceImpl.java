package com.trainingmanagement.services;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.trainingmanagement.beans.Training;

@Service("trainingService")
public class TrainingServiceImpl implements TrainingService 
{
	
	private static List<Training> trainingList = new ArrayList<Training>();

	@Override
	public List<Training> getAllTraining() 
	{
		return trainingList;
	}

	@Override
	public void add(Training trainig) 
	{
		trainingList.add(trainig);
	}

	@Override
	public void delete(Training trainig) 
	{
		Iterator<Training> it = trainingList.iterator();
		
        while(it.hasNext())
        {
        	Training t = it.next();
        	
        	if(t.getName().equals(trainig.getName()))
        	{
        		it.remove();
        		System.out.println("Removeu " + t.getName());
        	}
        }
	}

	@Override
	public void deleteAll() 
	{
		trainingList.clear();
	}
}

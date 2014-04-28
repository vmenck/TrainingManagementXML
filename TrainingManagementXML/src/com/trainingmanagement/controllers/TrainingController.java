package com.trainingmanagement.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trainingmanagement.services.TrainingServiceImpl;

@Controller
@RequestMapping("/trainings")
public class TrainingController 
{
	@Autowired
	private TrainingServiceImpl trainingService;

	@RequestMapping("/trainingList")
	public @ResponseBody
	List<String> getTrainingList() 
	{
		return trainingService.getAllTraining();
	}

	@RequestMapping(value = "/addTraining/{training}", method = RequestMethod.POST)
	public @ResponseBody void addTraining(@PathVariable("training") String training) 
	{
		trainingService.add(training);
	}

	@RequestMapping(value = "/removeTraining/{training}", method = RequestMethod.DELETE)
	public @ResponseBody void removeTrainingService(@PathVariable("training") String training)
	{
		trainingService.delete(training);
	}

	@RequestMapping(value = "/removeAllTrainings", method = RequestMethod.DELETE)
	public @ResponseBody void removeAllTrainings() 
	{
		trainingService.deleteAll();
	}

	@RequestMapping("/layout")
	public String getTrainingPartialPage() 
	{
		return "training/layout";
	}

}

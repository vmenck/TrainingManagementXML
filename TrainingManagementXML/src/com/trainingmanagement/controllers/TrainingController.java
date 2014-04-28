package com.trainingmanagement.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trainingmanagement.beans.Training;
import com.trainingmanagement.services.TrainingServiceImpl;

@Controller
@RequestMapping("/trainings")
public class TrainingController 
{
	@Autowired
	private TrainingServiceImpl trainingService;

	@RequestMapping(value = "/trainingList", method = RequestMethod.GET, headers="Accept=application/json")	
	public @ResponseBody
	List<Training> getTrainingList() 
	{
		return trainingService.getAllTraining();
	}

	@RequestMapping(value = "/addTraining", method = RequestMethod.POST, headers="Accept=application/json")
	public @ResponseBody void addTraining(@RequestBody Training training) 
	{
		trainingService.add(training);
	}

	@RequestMapping(value = "/removeTraining/{training}", method = RequestMethod.DELETE)
	public @ResponseBody void removeTrainingService(@PathVariable("training") Training training)
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

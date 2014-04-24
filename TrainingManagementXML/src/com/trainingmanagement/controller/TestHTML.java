package com.trainingmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestHTML 
{
    @RequestMapping(value = "/html", method = RequestMethod.GET)
    public ModelAndView showIndex() 
    {
    	System.out.println("Passou Aqui! (HTML TEST - html_index)");
    	return new ModelAndView("html_index");
    }
}
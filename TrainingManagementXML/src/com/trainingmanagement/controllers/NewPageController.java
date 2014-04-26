package com.trainingmanagement.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewPageController 
{
    @RequestMapping(value = "/newPage", method = RequestMethod.GET)
    public ModelAndView newPage() 
    {
    	System.out.println("Chegou aqui");
    	return new ModelAndView("part_table");
    }
}

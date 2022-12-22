package com.ansh.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ansh.model.UserRegistration;

@Controller
public class MainController
{
	@RequestMapping({"/","/registration"})
	public String getSignUpPage(@ModelAttribute("userReg") UserRegistration userRegistration)
	{
		System.out.println("Inside user registration");
		return "sign-up";
	}
	
	@RequestMapping("/details")
	public String getDetails(@Valid @ModelAttribute("userReg") UserRegistration userRegistration, BindingResult result)
	{
		System.out.println("Log : Showing details");
//		This will trigger the message used in validation annotation
		if(result.hasErrors())	
			return "sign-up";
		
		return "show-details";
	}
}
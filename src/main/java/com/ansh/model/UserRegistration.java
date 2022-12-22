package com.ansh.model;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.ansh.validation.Age;

public class UserRegistration
{
	@Size(min = 3,max = 30 , message = "Name can't be blank")
	@Pattern(regexp = "^[a-zA-Z\\s]*$",message=" *Name only contains letters")
	private String name;
	
	@Age
	private Integer age;
	
	@Email(message = "Enter valid email address")
	private String email;
	
	@NotBlank
	private String gender;

	@NotBlank(message="Choose atleast  anyone of the following")
	private String interest;


	//	@Annotation remaining
	private char[] passcode;
	
	private String country;

	@AssertTrue(message="Agree to the terms and conditions")
	private boolean termsAndConditions;
/*----------------------------------------------------------------*/
	
	public String getName()
	{
		return name;
	}

	public Integer getAge()
	{
		return age;
	}

	public String getEmail()
	{
		return email;
	}

	public String getInterest()
	{
		return interest;
	}

	public char[] getPasscode()
	{
		return passcode;
	}

	public String getCountry()
	{
		return country;
	}

	public String getGender()
	{
		return gender;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}

	public void setAge(Integer age)
	{
		this.age = age;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public void setInterest(String interest)
	{
		this.interest = interest;
	}

	public void setPasscode(char[] passcode)
	{
		this.passcode = passcode;
	}

	public void setCountry(String country)
	{
		this.country = country;
	}
		
	public void setGender(String gender)
	{
		this.gender = gender;
	}

	public boolean isTermsAndConditions()
	{
		return termsAndConditions;
	}

	public void setTermsAndConditions(boolean termsAndConditions)
	{
		this.termsAndConditions = termsAndConditions;
	}
}

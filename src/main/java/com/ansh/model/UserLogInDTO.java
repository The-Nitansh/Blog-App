package com.ansh.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class UserLogInDTO
{
	@Email(message = " *Enter valid email address")
	@NotBlank(message= " *This field can't be empty")
	private String email;
	
	@NotNull(message="")
	@Size(min=8 , max = 25 , message=" *Length should be more than 7 characters")
	private char[] passcode;
	
	public String getEmail()
	{
		return email;
	}
	public char[] getPasscode()
	{
		return passcode;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public void setPasscode(char[] passcode)
	{
		this.passcode = passcode;
	}
	
}

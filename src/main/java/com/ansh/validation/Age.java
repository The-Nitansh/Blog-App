package com.ansh.validation;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Documented
@Retention(RUNTIME)
@Target(FIELD)
@Constraint(validatedBy = AgeValidator.class)
public @interface Age 
{
	String message() default "Age should be between {lower} and {upper}";
	int lower() default 15;
	int upper() default 75;
	
//	Mandatory functions
	Class<?>[] groups() default {};
	Class<? extends Payload>[] payload() default {};
}

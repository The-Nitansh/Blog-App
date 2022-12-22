package com.ansh.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class BlogAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer
{

	@Override
	protected Class<?>[] getRootConfigClasses()
	{
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("rawtypes")
	@Override
	protected Class<?>[] getServletConfigClasses()
	{
		Class[] array = {BlogConfig.class};
		return array;
	}

	@Override
	protected String[] getServletMappings()
	{
		String arg[] = {"/"};
		return arg;
	}
	
}

/*package com.SublimeFrontend.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	
	@RequestMapping(value="/login")
	public String loginSuccess(HttpSession session,Model m)
	{
		String page="";
		boolean loggedIn=false;
		//This object will contain the logged in user details like username and role
		SecurityContext sContext=SecurityContextHolder.getContext();
		Authentication authentation= sContext.getAuthentication();
		
		//retrieving Role
		String username=authentation.getName();
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)
				
		for(GrantedAuthority role:roles)
		{
			session.setAttribute("role", role.getAuthority());
			if(role.getAuthority().endsWith("ROLE_ADMIN"));
			{
				loggedIn= true;
				page="AdminHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
			}
			else 
			{
				
			}
		}
	}
	return page;
}
*/
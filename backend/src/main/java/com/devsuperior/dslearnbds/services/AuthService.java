package com.devsuperior.dslearnbds.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;
import com.devsuperior.dslearnbds.services.exceptions.ForbiddenException;
import com.devsuperior.dslearnbds.services.exceptions.UnauthorizedException;

@Service
public class AuthService {

	
	@Autowired
	private UserRepository userRepository;
	
	@Transactional(readOnly = true)
	public User Autenticated() {
		
		try {
			String userName = SecurityContextHolder.getContext().getAuthentication().getName();
			return userRepository.findByEmail(userName);
		}catch (Exception e ) {
			throw new UnauthorizedException("Invalid User");
		}
		
	}
	
	public void validateSelfOrAdmin(Long userId) {
		
		User user = Autenticated();
		
		if (!user.getId().equals(userId) && !user.hasHole("ROLE_ADMIN")) {
			
			throw new ForbiddenException("Acess Dinied");
		
		}

	}
	
}

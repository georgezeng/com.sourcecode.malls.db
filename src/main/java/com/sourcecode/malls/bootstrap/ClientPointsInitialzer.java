package com.sourcecode.malls.bootstrap;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sourcecode.malls.service.impl.ClientService;

@Component
public class ClientPointsInitialzer {

	@Autowired
	private ClientService service;

	@PostConstruct
	public void init() {
		service.initClientPoints();
	}
}

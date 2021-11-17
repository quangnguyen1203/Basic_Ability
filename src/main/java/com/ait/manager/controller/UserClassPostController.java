package com.ait.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ait.manager.model.UserClassPost;
import com.ait.manager.service.userclasspost.UserClassPostServiceImpl;

@RestController
public class UserClassPostController {
	@Autowired 
	private UserClassPostServiceImpl userClassPostServiceImpl;
	
	@PostMapping("/user-class-post/insert")
	public ResponseEntity<UserClassPost> creatEntity(@RequestBody UserClassPost userClassPost){
		return new ResponseEntity<>(userClassPostServiceImpl.save(userClassPost),HttpStatus.CREATED);
	}
}

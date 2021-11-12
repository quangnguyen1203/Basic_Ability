package com.ait.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ait.manager.model.dto.PostDTO;
import com.ait.manager.service.post.PostServiceImpl;

@RestController
public class PostController {
	@Autowired
	private PostServiceImpl postServiceImpl;
	
	@GetMapping("/post/list-post")
	public ResponseEntity<Iterable<PostDTO>> listPost(){
		return new ResponseEntity<>(postServiceImpl.allListPost(),HttpStatus.OK);
	}
}

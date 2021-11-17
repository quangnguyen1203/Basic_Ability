package com.ait.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.servlet.ModelAndView;
import com.ait.manager.model.Event;
import com.ait.manager.model.Post;
import com.ait.manager.model.Status;
import com.ait.manager.model.User;
import com.ait.manager.model.dto.PostDTO;
import com.ait.manager.model.dto.StudentDTO;
import com.ait.manager.service.event.EventServiceImpl;
import com.ait.manager.service.post.PostServiceImpl;
import com.ait.manager.service.user.UserServiceImpl;

@RestController
public class PostController {
	@Autowired
	private PostServiceImpl postServiceImpl;
	
	@Autowired
	private EventServiceImpl eventServiceImpl;
	
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	@GetMapping("/posts/list-post")
	public ResponseEntity<Iterable<PostDTO>> listPost(){
		return new ResponseEntity<>(postServiceImpl.allListPost(),HttpStatus.OK);
	}
	
	@GetMapping("/posts/create-post")
	@PreAuthorize("hasAnyAuthority('学生')")
	public ModelAndView pageCreatePost() {
        return new ModelAndView("student/createPost");
    }
	
	@PostMapping("/posts/insert-post")
	public ResponseEntity<Post> createPost(@RequestBody Post post) {
		Event event = eventServiceImpl.findById(post.getEvent().getEvent_id()).get();
		post.setEvent(event);
		User user = userServiceImpl.findById(post.getUser().getId()).get();
		post.setUser(user);
		post.setStatus(Status.未確認);
		return new ResponseEntity<>(postServiceImpl.save(post),HttpStatus.CREATED);
	}
	
	@GetMapping("/posts/student-detail/{id}")
	public ResponseEntity<Iterable<StudentDTO>> listStudentDetail(@PathVariable Long id){
		return new ResponseEntity<>(postServiceImpl.listStudentDetail(id),HttpStatus.OK);
	}
	
	@GetMapping("/posts/student-detail")
	public ModelAndView pageStudentDetail() {
        return new ModelAndView("doctor/studentDetail");
    }
}

package com.ait.manager.service.post;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ait.manager.model.Post;
import com.ait.manager.model.dto.PostDTO;
import com.ait.manager.repository.PostRepository;

@Service
public class PostServiceImpl implements PostService {
	@Autowired
	private PostRepository postRepository;

	@Override
	public Iterable<Post> findAll() {
		// TODO Auto-generated method stub
		return postRepository.findAll();
	}

	@Override
	public Optional<Post> findById(Long id) {
		// TODO Auto-generated method stub
		return postRepository.findById(id);
	}

	@Override
	public Post save(Post t) {
		// TODO Auto-generated method stub
		return postRepository.save(t);
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		postRepository.deleteById(id);
	}

	@Override
	public Iterable<PostDTO> allListPost() {
		// TODO Auto-generated method stub
		return postRepository.allListPost();
	}

}

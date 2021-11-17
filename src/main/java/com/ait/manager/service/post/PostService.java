package com.ait.manager.service.post;

import java.util.List;

import com.ait.manager.model.Factorial;
import com.ait.manager.model.Post;
import com.ait.manager.model.dto.PostDTO;
import com.ait.manager.model.dto.StudentDTO;
import com.ait.manager.service.GeneralService;

public interface PostService extends GeneralService<Post>{
	Iterable<PostDTO> allListPost();
	Iterable<PostDTO> allListByHashtag(String factorials);
	Iterable<StudentDTO> listStudentDetail(Long id);
}

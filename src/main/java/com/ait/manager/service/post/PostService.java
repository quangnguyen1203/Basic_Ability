package com.ait.manager.service.post;

import com.ait.manager.model.Post;
import com.ait.manager.model.dto.PostDTO;
import com.ait.manager.service.GeneralService;

public interface PostService extends GeneralService<Post>{
	Iterable<PostDTO> allListPost();
}

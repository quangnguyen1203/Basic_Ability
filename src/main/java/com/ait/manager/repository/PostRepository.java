package com.ait.manager.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ait.manager.model.Post;
import com.ait.manager.model.dto.PostDTO;

@Repository
public interface PostRepository extends JpaRepository<Post, Long> {
	
	@Query(nativeQuery = true, value="select distinct(p.users_id) as id,u.full_name as fullName, c.class_name as class_name, group_concat(DISTINCT e.event_name) as event_name , group_concat(DISTINCT  f.factorial_hashtag) as factorial_hashtag from posts p \r\n"
			+ "inner join post_detail pd on p.post_id = pd.post_id\r\n"
			+ "inner join factorials f on pd.factorial_id = f.factorial_id\r\n"
			+ "inner join events e on p.events_event_id = e.event_id\r\n"
			+ "inner join users u on u.id = p.users_id\r\n"
			+ "inner join user_class_post ucl on ucl.post_id = p.post_id\r\n"
			+ "inner join classes c on ucl.class_id = c.class_id\r\n"
			+ "where u.class_id = ucl.class_id\r\n"
			+ "group by ucl.class_id")
	Iterable<PostDTO> allListPost();
}

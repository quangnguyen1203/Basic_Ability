package com.ait.manager.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.ait.manager.model.Post;
import com.ait.manager.model.dto.PostDTO;
import com.ait.manager.model.dto.StudentDTO;

@Repository
public interface PostRepository extends JpaRepository<Post, Long> {
	
//	@Query(nativeQuery = true, value="select distinct(p.users_id) as id,u.full_name as fullName, u.user_code as user_code, c.class_name as class_name, group_concat(DISTINCT e.event_name) as event_name , group_concat(DISTINCT  f.factorial_hashtag) as factorial_hashtag from posts p \r\n"
//			+ "inner join post_detail pd on p.post_id = pd.post_id\r\n"
//			+ "inner join factorials f on pd.factorial_id = f.factorial_id\r\n"
//			+ "inner join events e on p.events_event_id = e.event_id\r\n"
//			+ "inner join users u on u.id = p.users_id\r\n"
//			+ "inner join user_class_post ucl on ucl.post_id = p.post_id\r\n"
//			+ "inner join classes c on ucl.class_id = c.class_id\r\n"
//			+ "where u.class_id = ucl.class_id \r\n"
//			+ "group by ucl.class_id\r\n"
//			+ "order by u.user_code asc")
//	Iterable<PostDTO> allListPost();
	
	
	  @Query(nativeQuery = true, value="SELECT * FROM list_all_student")
	  Iterable<PostDTO> allListPost();
	 
	@Query(nativeQuery = true, value ="SELECT * FROM post_list where factorial_hashtag like (%?%)")
	Iterable<PostDTO> allListByHashtag(String factorials);
	
	@Query(nativeQuery = true, value ="SELECT p.post_id as post_id, c.class_name as class_name, e.event_name as event_name, p.status as status FROM posts p \r\n"
			+ "inner join events e on p.event_id = e.event_id \r\n"
			+ "inner join users u on p.user_id = u.id\r\n"
			+ "inner join user_class_post ucp on ucp.post_id = p.post_id\r\n"
			+ "inner join classes c on ucp.class_id = c.class_id\r\n"
			+ "where u.id = ?\r\n"
			+ "order by c.class_id desc, e.event_id desc")
	Iterable<StudentDTO> listStudentDetail(Long id);
}

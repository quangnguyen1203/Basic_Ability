package com.ait.manage.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "post_detail")
public class PostDetail {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long post_detail_id;
	
	@JoinColumn(name = "user_id")
	private Long user_id;
	
	@JoinColumn(name = "post_id")
	private Long post_id;
	
	@JoinColumn(name = "cmt_id")
	private Long cmt_id;
	
	@JoinColumn(name = "factorial_id")
	private Long factorial_id;
}

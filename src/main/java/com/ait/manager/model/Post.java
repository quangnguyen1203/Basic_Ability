package com.ait.manager.model;

import lombok.*;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.List;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "posts")
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long post_id;

    private String work_completed;
    private String action;
    private String power;
    private String capacity;
    private String think;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "event_id")
    private Event event;

    @OneToMany
    private List<Comment> comments;

    @JsonIgnore
    @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(
	    name = "post_factorial",
	    joinColumns = { @JoinColumn(name = "post_id") },
	    inverseJoinColumns = { @JoinColumn(name = "factorial_id") }
    )
    private List<Factorial> factorials;

    private Status status;
    
	public Post(String work_completed, String action, String power, String capacity, String think, User user,
			Event event, List<Comment> comments, List<Factorial> factorials, Status status) {
		this.work_completed = work_completed;
		this.action = action;
		this.power = power;
		this.capacity = capacity;
		this.think = think;
		this.user = user;
		this.event = event;
		this.comments = comments;
		this.factorials = factorials;
		this.status = status;
	}

	public Post(String work_completed, String action, String power, String capacity, String think, Event event) {
		this.work_completed = work_completed;
		this.action = action;
		this.power = power;
		this.capacity = capacity;
		this.think = think;
		this.event = event;
	}

	public Post(String work_completed, String action, String power, String capacity, String think, Event event,
			Status status) {
		this.work_completed = work_completed;
		this.action = action;
		this.power = power;
		this.capacity = capacity;
		this.think = think;
		this.event = event;
		this.status = status;
	}
}
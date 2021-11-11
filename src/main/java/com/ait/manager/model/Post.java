package com.ait.manager.model;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Data
@Getter
@Setter
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
    private User users;

    @OneToOne
    private Event events;

    @OneToMany
    private List<Comment> comments;

    @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(
            name = "post_factorial",
            joinColumns = { @JoinColumn(name = "post_id") },
            inverseJoinColumns = { @JoinColumn(name = "factorial_id") }
    )
    private List<Factorial> factorials;

    public enum Status {
   	 UN("unconfimred"),CED("confimred"),CFM("confirming");
       private final String value;

       Status(String value) {
           this.value = value;
       }
       public String getValue(){
       return this.value;
       }

    }
    @Enumerated(EnumType.STRING)
    private Status status;
    
	public Post(String work_completed, String action, String power, String capacity, String think, User users,
			Event events, List<Comment> comments, List<Factorial> factorials, Status status) {
		super();
		this.work_completed = work_completed;
		this.action = action;
		this.power = power;
		this.capacity = capacity;
		this.think = think;
		this.users = users;
		this.events = events;
		this.comments = comments;
		this.factorials = factorials;
		this.status = status;
	}

    
    
}
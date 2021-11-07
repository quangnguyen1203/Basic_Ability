package com.ait.basic_ability.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
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

    @OneToMany
    private List<Factorial> factorials;

    @OneToOne
    private Status status;

}

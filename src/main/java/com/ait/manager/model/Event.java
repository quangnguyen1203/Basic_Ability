package com.ait.manager.model;

import lombok.*;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.util.List;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "events")
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long event_id;
    private String event_name;
    private String event_icon;

    @OneToMany(targetEntity = Post.class, fetch = FetchType.EAGER)
    private List<Post> posts;

    public Event(String event_name, String event_icon, List<Post> posts) {
        this.event_name = event_name;
        this.event_icon = event_icon;
        this.posts = posts;
    }

	public Event(Long event_id) {
		this.event_id = event_id;
	}
}

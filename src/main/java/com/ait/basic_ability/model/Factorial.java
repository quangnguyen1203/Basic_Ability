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
@Table(name="factorials")
public class Factorial {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long factorial_id;

    private String factorial_name;

    @OneToMany
    private List<User> users;

    @OneToMany
    private List<Post> posts;
}

package com.ait.manage.model;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "roles")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String code;
    private String name;

    @OneToMany(targetEntity = User.class, fetch = FetchType.EAGER)
    private List<User> users;

    public Role(Long id) {
        this.id = id;
    }

    public Role(String code, String name, List<User> users) {
        this.code = code;
        this.name = name;
        this.users = users;
    }
}

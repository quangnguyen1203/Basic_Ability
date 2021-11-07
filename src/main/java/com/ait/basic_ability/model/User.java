package com.ait.basic_ability.model;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected Long id;

    @Column(columnDefinition = "boolean default false")
    private boolean deleted = false;

    @Column(unique = true, nullable = false)
    private String username;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private String fullName;

    @Column(nullable = false, unique = true)
    private String phone;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String image;

    @ManyToOne(targetEntity = Role.class, fetch = FetchType.EAGER)
    @JoinColumn(name = "role_id")
    private Role role;

    @ManyToOne(targetEntity = Class.class, fetch = FetchType.EAGER)
    @JoinColumn(name = "class_id")
    private Class aClass;


    @OneToMany
    private List<Post> posts;

    @OneToMany
    private List<Factorial> factorials;

    public User(String username, String password, String fullName, Role role) {
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.role = role;
    }

    public User(String username, String fullName, String phone, String email, Role role) {
        this.username = username;
        this.fullName = fullName;
        this.phone = phone;
        this.email = email;
        this.role = role;
    }

    public User(Long id, String username, String fullName, String phone, String email, Role role) {
        this.id = id;
        this.username = username;
        this.fullName = fullName;
        this.phone = phone;
        this.email = email;
        this.role = role;
    }

    public User(String username, String password, String fullName, String phone, String email, Role role) {
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.phone = phone;
        this.email = email;
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", fullName='" + fullName + '\'' +
                ", roles=" + role +
                '}';
    }
}

package com.ait.basic_ability.model;

import lombok.*;

import javax.persistence.*;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="status")
public class Status {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long status_id;

    private String status_name;

    public Status(String status_name) {
        this.status_name = status_name;
    }
}

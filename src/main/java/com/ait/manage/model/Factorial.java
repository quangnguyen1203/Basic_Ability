package com.ait.manage.model;
import lombok.*;

import javax.persistence.*;

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
    
    private String factorial_hashtag;

	public Factorial(String factorial_name, String factorial_hashtag) {
		super();
		this.factorial_name = factorial_name;
		this.factorial_hashtag = factorial_hashtag;
	}

}

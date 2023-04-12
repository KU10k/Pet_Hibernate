package com.pet.mvc.models;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Data
@Table(name = "animal")
public class Pet {
    @Id
    @Column(name = "id",unique = true,updatable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "pets")
    @NotBlank(message = "Animal data entered incorrectly")
    @Size(min = 2 , max= 30 , message =
            "The name of the animal must be at least 2 characters")
    private String pets;

    @Column(name = "petName")
    @NotBlank(message =
            "The name of the Animal was entered incorrectly")
    @Size(min = 2 , max= 30 , message =
            "The name of the animal must be at least 2 characters")
    private String petName;

    @Column(name = "age")
    @Min(value = 3,message =
            "the animal must not be younger than 3 years old")
    private int age;

//    @NotBlank(message = "Specify the gender of the animal")
//    private String sexOfTheAnimal;
//    private String city;
//    @NotBlank(message = "The mail data was entered incorrectly")
//    @Email(message = "Isn't email")
//    private String emailOfTheOwner;
//    @Pattern(regexp = "^((8|\\+7)[\\- ]?)?(\\(?\\d{3}\\)?[\\- ]?)?[\\d\\- ]{10}$",message = "Pleas use pattern +7-XXX-XXX-XX-XX" )
//    private String phoneNumberOfTheOwner;

}

package com.manasseh.spring_jee.model;

import jakarta.persistence.*;

@Entity
@Table(name = "salle")
public class Salle {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int code_salle;
    @Column(name = "salle_designation")
    String designation;

    public void setCode_salle(Long codeSalle) {
        this.code_salle = Math.toIntExact(codeSalle);
    }

    public Long getCode_salle() {
        return (long) code_salle;
    }
}

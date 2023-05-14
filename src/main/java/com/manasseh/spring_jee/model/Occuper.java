package com.manasseh.spring_jee.model;
import jakarta.persistence.*;

import java.lang.annotation.Target;
import java.util.Date;

@Entity
@Table(name = "occuper")
public class Occuper {
    @OneToOne(targetEntity = Prof.class)
    int code_prof;
    @OneToOne(targetEntity = Salle.class)
    int code_salle;
    Date date;

    public int getCode_prof() {
        return code_prof;
    }

    public void setCode_prof(int code_prof) {
        this.code_prof = code_prof;
    }

    public int getCode_salle() {
        return code_salle;
    }

    public void setCode_salle(int code_salle) {
        this.code_salle = code_salle;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Id
    @GeneratedValue
    private Long id;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}

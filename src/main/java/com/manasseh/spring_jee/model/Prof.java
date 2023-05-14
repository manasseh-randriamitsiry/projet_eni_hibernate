package com.manasseh.spring_jee.model;


import jakarta.persistence.*;

@Entity
@Table(name="prof")
public class Prof {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int codeprof;
    @Column(name = "nom_prof")
    String nom;
    @Column(name = "prenom_prof")
    String prenom;
    @Column(name = "grade_prof")
    String grade;

    public void setCodeprof(int codeprof) {
        this.codeprof = codeprof;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public void setCodeprof(Long codeprof) {
        this.codeprof = Math.toIntExact(codeprof);
    }

    public Long getCodeprof() {
        return (long) codeprof;
    }
}

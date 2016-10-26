package com.company.survey.entity.reference;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Set;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import com.haulmont.cuba.core.entity.StandardEntity;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s|name")
@Table(name = "SURVEY_CATEGORY")
@Entity(name = "survey$Category")
public class Category extends StandardEntity {
    private static final long serialVersionUID = 5153271552687723888L;

    @Column(name = "NAME")
    protected String name;

    @OneToMany(mappedBy = "category")
    protected Set<Question> questions;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


    public void setQuestions(Set<Question> questions) {
        this.questions = questions;
    }

    public Set<Question> getQuestions() {
        return questions;
    }


}
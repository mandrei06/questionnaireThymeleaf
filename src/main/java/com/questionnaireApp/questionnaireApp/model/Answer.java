package com.questionnaireApp.questionnaireApp.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Answer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer answerId;
    private Integer questionId;
    private Integer userId;
    private String answer;

    public Answer(Integer questionId, Integer userId, String answer) {
        this.questionId = questionId;
        this.userId = userId;
        this.answer = answer;
    }



}




package com.questionnaireApp.questionnaireApp.model;

import jakarta.persistence.Entity;
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
    private Integer answerId;
    private Integer questionId;
    private Integer userId;
    private String answer;
}




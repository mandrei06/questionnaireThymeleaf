package com.questionnaireApp.questionnaireApp.Controller;

import com.questionnaireApp.questionnaireApp.model.Answer;
import com.questionnaireApp.questionnaireApp.repository.AnswerRepo;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AnswerController {

    AnswerRepo answerRepo;

    @PostMapping("/answer")
    public void sendAnswer(@RequestParam Answer answer){
        answerRepo.save(answer);
    }

}

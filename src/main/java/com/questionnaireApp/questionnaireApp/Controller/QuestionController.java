package com.questionnaireApp.questionnaireApp.Controller;

import com.questionnaireApp.questionnaireApp.model.Question;
import com.questionnaireApp.questionnaireApp.repository.QuestionRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
public class QuestionController {

    @Autowired
    QuestionRepo questionRepo;

   @GetMapping("/getQuestions")
   private List<Question> getQuestions(){
       return questionRepo.findAll();
   }


}

package com.questionnaireApp.questionnaireApp.Controller;

import com.questionnaireApp.questionnaireApp.model.Answer;
import com.questionnaireApp.questionnaireApp.model.Question;
import com.questionnaireApp.questionnaireApp.model.User;
import com.questionnaireApp.questionnaireApp.repository.AnswerRepo;
import com.questionnaireApp.questionnaireApp.repository.QuestionRepo;
import com.questionnaireApp.questionnaireApp.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class UserController {
    @Autowired
    UserRepo userRepo;

    @Autowired
    QuestionRepo questionRepo;
    @Autowired
    AnswerRepo answerRepo;
    List<Question> questionsList;
    int i=1;

    Integer userId;
    int maxSize;
    @PostMapping("/addUser")
    public String getUserEmail(@RequestParam String email, Model model){
        System.out.println("User email:"+email);
        User user=new User(email);
        userRepo.save(user);
        questionsList=questionRepo.findAll();
        maxSize = questionsList.size();
        userId = user.getUserId();
        model.addAttribute("questionList",questionsList.get(i));
        i++;
        return "questions";
    }
    @PostMapping("/answerQuestion")
    public String getAnswer(@RequestParam String answer, Model model){
        Answer answer1 = new Answer(i-1,userId,answer);
        answerRepo.save(answer1);
        if(i<=maxSize-1)
            model.addAttribute("questionList",questionsList.get(i));
        i++;
        if (i==maxSize+1){
            return "end";
        }

        return "questions";
    }
}

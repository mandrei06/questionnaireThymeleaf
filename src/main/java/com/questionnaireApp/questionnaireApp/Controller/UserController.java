package com.questionnaireApp.questionnaireApp.Controller;

import com.questionnaireApp.questionnaireApp.model.Question;
import com.questionnaireApp.questionnaireApp.model.User;
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

    int i=1;
    @PostMapping("/addUser")
    public String getUserEmail(@RequestParam String email, Model model){
        System.out.println("User email:"+email);
        User user=new User(email);
        userRepo.save(user);
        List<Question>  questionsList=questionRepo.findAll();
        System.out.println(questionsList);
        model.addAttribute("questionList",questionsList.get(i));
        i++;
        return "questions";
    }
}

package com.questionnaireApp.questionnaireApp.Controller;

import com.questionnaireApp.questionnaireApp.model.User;
import com.questionnaireApp.questionnaireApp.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
    @Autowired
    UserRepo userRepo;

    @PostMapping("/addUser")
    public String getUserEmail(@ModelAttribute ("userToAdd") User userToAdd){
        userRepo.save(userToAdd);
        return "questions";
    }
}

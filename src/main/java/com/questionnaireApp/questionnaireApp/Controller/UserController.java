package com.questionnaireApp.questionnaireApp.Controller;

import com.questionnaireApp.questionnaireApp.model.User;
import com.questionnaireApp.questionnaireApp.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
public class UserController {
    @Autowired
    UserRepo userRepo;


    @PostMapping("/addUser")
    public String getUserEmail(@RequestParam String email){
        System.out.println("User email:"+email);
        User user=new User(email);
        userRepo.save(user);
        return "questions";
    }
}

package com.questionnaireApp.questionnaireApp.repository;

import com.questionnaireApp.questionnaireApp.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionRepo extends JpaRepository<User,Integer> {
}

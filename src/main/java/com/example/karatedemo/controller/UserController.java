package com.example.karatedemo.controller;

import com.example.karatedemo.dao.UserRepository;
import com.example.karatedemo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class UserController {
    @Autowired
    UserRepository userRepository;

    @PostMapping("/user")
    User newUser(@RequestBody User newUser){
        return userRepository.save(newUser);
    }

    @GetMapping("/users")
    List<User> allUsers(){
        return userRepository.findAll();
    }

    @GetMapping("/user/{uid}")
    Optional<User> user(@PathVariable ("uid") int uid ){
        return userRepository.findById(uid);
    }

    @DeleteMapping("/user/{uid}")
    public String deleteUser(@PathVariable("uid") int uid){
         userRepository.deleteById(uid);
         return "deleted";
    }

    @PutMapping("/user")
    public User updateorcreateUser(@RequestBody User user){
        return userRepository.save(user);

    }
}

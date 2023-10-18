package com.example.resourceTrackPro.services;

import com.example.resourceTrackPro.entities.User;
import com.example.resourceTrackPro.repositories.UserRepositoryImpl;
import com.example.resourceTrackPro.repositories.UserRepositoryInterface;

import java.util.Optional;

public class UserService {

    private UserRepositoryInterface userRepositoryInterface ;
    private static UserRepositoryImpl userRepositoryImpl = new UserRepositoryImpl();

  /*  public UserService(UserRepositoryInterface userRepositoryInterface) {
        this.userRepositoryInterface = userRepositoryInterface;
    }*/
   /* public UserService(UserRepositoryImpl userRepositoryImpl) {
        this.userRepositoryImpl = userRepositoryImpl;
    }*/

    public UserService() {
    }

    public User register(User user){
        userRepositoryImpl.save(user);
        return null;
    }

    public boolean isValidUser( User user) {
        System.out.println("Validating user: " + user);
        Optional<User> byUsername = userRepositoryImpl.findByUsername(user.getUsername());
        return byUsername.isPresent()
                && user.getPassword().equals(byUsername.get().getPassword());
    }

    public boolean validLoginDetails(User user) {
        System.out.println("Validating user: " + user);
//        return true;
        return userRepositoryImpl.findByUsername(user.getUsername()).isEmpty()
                && user.getPassword() !=null && user.getPassword().matches("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$");
    }
}
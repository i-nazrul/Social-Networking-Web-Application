/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.controller;

import com.social.entity.Users;
import com.social.service.IUsersService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author B14
 */
@Controller
public class UsersController {

    @Autowired
    private IUsersService userService;

@RequestMapping("/")
    public String listUser(Map<String, Object> map) {
        map.put("user", new Users());
        map.put("userList", userService.listUser());
        return "index";
    }
    
    @RequestMapping(value = "/user/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("user") Users user, BindingResult result) {
        if (user.getUserId() == null) {
            userService.addUser(user);
        } else {
            userService.updateUser(user);
        }
        return "redirect:/";
    }
    @RequestMapping(value = "/user/update", method = RequestMethod.POST)
    public String updateUsers(@ModelAttribute("user") Users user, BindingResult result) {
        
            userService.updateUser(user);
        
        return "redirect:/edit_profile";
    }
    
    @RequestMapping("/delete/{pid}")
    public String deleteUser(@PathVariable("pid") Integer pid) {
        userService.removeUser(pid);
        return "redirect:/";
    }
    
    @RequestMapping("/edit/{userId}")
    public String editUser(@PathVariable("userId") Integer userId, Map<String, Object> map) {
        map.put("user", userService.getUserById(userId));
        map.put("userList", userService.listUser());
        return "edit_profile";
    }
}

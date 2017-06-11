/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.controller;

import com.social.entity.Post;
import com.social.entity.Users;
import com.social.service.PostServiceInterface;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author B3
 */
@Controller
public class PostCtrl {
    @Autowired
    private PostServiceInterface postServInt;
    private Users user;
    
    @RequestMapping(value = "/homePostAdd", method = RequestMethod.POST)
    public String homePostAdd(@ModelAttribute("post") Post post, BindingResult result) {
        
            postServInt.addPost(new Post(post.getUserId(),post.getPostTitle(),post.getPostContext(),"test",new Date(),"n/a"));
            System.out.println(post.getUserId()+""+post.getPostTitle()+""+post.getPostContext()+""+"test"+""+new Date()+""+"n/a");
        
        return "home";
    }
    
    @RequestMapping(value = "/profilePostAdd", method = RequestMethod.POST)
    public String profilePostAdd(@ModelAttribute("post") Post post, BindingResult result) {
        
            postServInt.addPost(new Post(post.getUserId(),post.getPostTitle(),post.getPostContext(),"test",new Date(),"n/a"));
            System.out.println(post.getUserId()+""+post.getPostTitle()+""+post.getPostContext()+""+"test"+""+new Date()+""+"n/a");
        
        return "profile";
    }
}

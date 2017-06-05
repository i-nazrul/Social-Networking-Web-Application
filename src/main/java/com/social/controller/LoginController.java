/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.controller;

import com.social.entity.Users;
import com.social.service.IUsersService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Hridoy
 */
@Controller
public class LoginController {

    @Autowired
    private IUsersService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("index");
        mav.addObject("user", new Users());
        return mav;
    }

    @RequestMapping(value = "/home", method = RequestMethod.POST)
    public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
            @ModelAttribute("user") Users login) {
        ModelAndView mav = null;
        Users user = userService.loginUsers(login);
        if (null != user) {
            mav = new ModelAndView("home");
            mav.addObject("userId", user.getUserId());
            mav.addObject("firstName", user.getFirstName());
            mav.addObject("lastName", user.getLastName());
            mav.addObject("email", user.getEmail());
            mav.addObject("password", user.getPassword());
            mav.addObject("day", user.getDay());
            mav.addObject("month", user.getMonth());
            mav.addObject("year", user.getYear());
            mav.addObject("sex", user.getSex());
            mav.addObject("status", user.getStatus());
            mav.addObject("regDate", user.getRegDate());
            
        } else {
            mav = new ModelAndView("index");
            mav.addObject("message", "Email or Password is wrong!!");
        }
        return mav;
    }
}

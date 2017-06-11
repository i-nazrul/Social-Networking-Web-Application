/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.controller;

import com.social.entity.ProfilePhotoAlbum;
import com.social.entity.Users;
import com.social.service.IUsersService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import org.apache.tomcat.util.codec.binary.Base64;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Hridoy
 */
@Controller
@SessionAttributes("user-entity")
@Transactional
@Repository
public class LoginController {

    @Autowired
    private IUsersService userService;
    @Autowired
    private SessionFactory sessionFactory;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("index");
        mav.addObject("user", new Users());
        return mav;
    }

    
    @RequestMapping(value = "/home", method = RequestMethod.POST)
    public ModelAndView loginProcess(WebRequest webRequest, 
            @ModelAttribute("user") Users user, HttpSession session) {
       
        user = userService.loginUsers(user);
         session.setAttribute("u", user);
         
         // for profile photo
        Session session2 = sessionFactory.getCurrentSession();
        Query query2 = session2.createQuery("FROM ProfilePhotoAlbum p WHERE p.userId=:userId and p.status=:status");

        query2.setInteger("userId", user.getUserId());
        query2.setInteger("status", 1);

        List<ProfilePhotoAlbum> cList2 = query2.list();
        cList2.toString();
        for(ProfilePhotoAlbum p : cList2){
            System.out.println("Login Controller: "+p.getProfilePhotoId()+" "+p.getUserId()+" "+p.getFileLink()+" "+p.getStatus());
        }
        ProfilePhotoAlbum ppa = cList2.get(0);
        session.setAttribute("ppa", ppa);
         
        return new ModelAndView("home", "user-entity", user);
    }
    
    @RequestMapping(value = "/logout", method=RequestMethod.GET)
      public String logout(HttpSession session) {
        session.invalidate();
        System.out.println("session.invalidate()");
        return "redirect:/";
      }
}

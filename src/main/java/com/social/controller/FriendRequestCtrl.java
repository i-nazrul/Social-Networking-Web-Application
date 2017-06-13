/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.controller;

import com.social.entity.FriendRequest;
import com.social.entity.Users;
import com.social.service.FriendRequestServiceInterface;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Hridoy
 */
@Controller
public class FriendRequestCtrl {
    @Autowired
    private FriendRequestServiceInterface frsi;
    
    List<FriendRequest> totalSentToList;
    
    @RequestMapping(value = "/sendRequest", method = RequestMethod.POST)
    public String add(@ModelAttribute("fr") FriendRequest fr, BindingResult result, HttpSession session) {
        totalSentToList = frsi.add(fr);
//        System.out.println("Ctrl: Friend request sent to "+totalSentToList.size()+" persons");
//            System.out.println("Ctrl: "+fr.getUserId()+" "+fr.getUserIdTo()+" "+fr.getStatus());
        session.removeAttribute("requestSent");
        session.setAttribute("requestSent", totalSentToList);
        return "people_directory";
    }
    
    @RequestMapping(value = "/cancelRequest", method = RequestMethod.POST)
    public String updateCancel(@ModelAttribute("fr") FriendRequest fr, BindingResult result, HttpSession session) {
        totalSentToList = frsi.update(fr);
//        System.out.println("Ctrl: "+fr.getFriendRequstId()+" "+fr.getUserId()+" "+fr.getUserIdTo()+" "+fr.getStatus());
        session.removeAttribute("requestSent");
        session.setAttribute("requestSent", totalSentToList);
        return "people_directory";
    }
    
    @RequestMapping(value = "/acceptRequest", method = RequestMethod.POST)
    public String updateAccept(@ModelAttribute("fr") FriendRequest fr, BindingResult result, HttpSession session) {
        System.out.println("acceptRequest: "+fr.getFriendRequstId()+" "+fr.getUserId()+" "+fr.getUserIdTo()+" "+fr.getStatus());
        return "people_directory";
    }
    
    @RequestMapping(value = "/rejectRequest", method = RequestMethod.POST)
    public String updateReject(@ModelAttribute("fr") FriendRequest fr, BindingResult result, HttpSession session) {
//        System.out.println("acceptRequest: "+fr.getFriendRequstId()+" "+fr.getUserId()+" "+fr.getUserIdTo()+" "+fr.getStatus());
        List<Users> getRequests = frsi.reject(fr);
        session.setAttribute("getRequests", getRequests);
        return "people_directory";
    }
    
     @RequestMapping(value = "/rejectRequestHome", method = RequestMethod.POST)
    public String updateRejectHome(@ModelAttribute("fr") FriendRequest fr, BindingResult result, HttpSession session) {
//        System.out.println("acceptRequest: "+fr.getFriendRequstId()+" "+fr.getUserId()+" "+fr.getUserIdTo()+" "+fr.getStatus());
        List<Users> getRequests = frsi.reject(fr);
        session.setAttribute("getRequests", getRequests);
        return "home";
    }
}

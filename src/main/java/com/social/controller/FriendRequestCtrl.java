/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.controller;

import com.social.entity.FriendRequest;
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
        session.setAttribute("requestSent", totalSentToList);
        return "people_directory";
    }
    
    @RequestMapping(value = "/cancelRequest", method = RequestMethod.POST)
    public String update(@ModelAttribute("fr") FriendRequest fr, BindingResult result, HttpSession session) {
        totalSentToList = frsi.update(fr);
//        System.out.println("Ctrl: "+fr.getFriendRequstId()+" "+fr.getUserIdFrom()+" "+fr.getUserIdTo()+" "+fr.getStatus());
        session.setAttribute("requestSent", totalSentToList);
        return "people_directory";
    }
}

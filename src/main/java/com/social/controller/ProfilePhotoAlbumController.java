/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.controller;

import com.social.entity.ProfilePhotoAlbum;
import com.social.service.ProfilePhotoAlbumServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author B1
 */
@Controller
@SessionAttributes("user-entity")
public class ProfilePhotoAlbumController {
    
    @Autowired
    private ProfilePhotoAlbumServiceInterface profilePhotoAlbmServInt;
    
    
    @RequestMapping(value = "/addProfilePic", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("ppa") ProfilePhotoAlbum ppa, BindingResult result) {
      
            profilePhotoAlbmServInt.addProfilePhotoAlbum(ppa);
       
        return "redirect:/";
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.controller;

import com.social.entity.ProfilePhotoAlbum;
import com.social.entity.Users;
import com.social.service.ProfilePhotoAlbumServiceInterface;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author B1
 */
@Controller
@SessionAttributes("user-entity")
public class ProfilePhotoAlbumController {
    
    @Autowired
    private ProfilePhotoAlbumServiceInterface ppasi;
    
    @RequestMapping("/home1")
    public String listUser(Users u) {
        
         ppasi.getProfilePhoto(u.getUserId());
        return "home";
    }
    
    @RequestMapping(value = "/uploadPic/{userId}", method = RequestMethod.POST)
    public String upload(@PathVariable("userId") Integer userId, @RequestParam("file_link") MultipartFile file_link, HttpSession session) throws IOException {
      
        
        String fileName= file_link.getOriginalFilename();
        session.setAttribute("pic", fileName);

        InputStream is =  new BufferedInputStream(file_link.getInputStream());
        byte[] bytes = IOUtils.toByteArray(is);
        
        ProfilePhotoAlbum ppa = new ProfilePhotoAlbum(userId, new Date(), bytes, 1);
//        System.out.println("Path & userId "+ppa.getUserId() +" "+ppa.getFileLink()+""+ppa.getAddedDate());
        ppasi.addProfilePhoto(ppa);
                   
        return "edit_profile";
    }
    
    public File multipartToFile(MultipartFile multipart) throws IllegalStateException, IOException 
{
    File convFile = new File( multipart.getOriginalFilename());
    multipart.transferTo(convFile);
    return convFile;
}
}

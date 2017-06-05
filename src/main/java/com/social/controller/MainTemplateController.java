package com.social.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainTemplateController {

    @RequestMapping(value="/home")
    public String getHomeTemplate() {
    	return "home";	
    }

    @RequestMapping(value="/profile")
    public String getProfileTemplate() {
    	return "profile";	
    }

    @RequestMapping(value="/about")
    public String getAboutTemplate() {
    	return "about";	
    }

    @RequestMapping(value="/friends")
    public String getFriendsTemplate() {
    	return "friends";	
    }

    @RequestMapping(value="/photos1")
    public String getPhtosTemplate() {
    	return "photos1";	
    }

    @RequestMapping(value="/user_detail")
    public String getUserDetailsTemplate() {
    	return "user_detail";	
    }
    
    @RequestMapping(value="/people_directory")
    public String getPeopleDirectoryTemplate() {
    	return "people_directory";	
    }

    @RequestMapping(value="/edit_profile")
    public String getEditProfileTemplate() {
    	return "edit_profile";	
    }

    @RequestMapping(value="/messages1")
    public String getMessagesTemplate() {
    	return "messages1";	
    }

    @RequestMapping(value="/list_users")
    public String getListUsersTemplate() {
    	return "list_users";	
    }

    @RequestMapping(value="/grid_posts")
    public String getGridPostsTemplate() {
    	return "grid_posts";	
    }
    
    @RequestMapping(value="/file_manager")
    public String getFileManagerTemplate() {
    	return "file_manager";	
    }

}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.service;

import com.social.dao.PostDaoInterface;
import com.social.entity.Post;
import com.social.entity.Users;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author B3
 */
@Service
public class PostService implements PostServiceInterface{
    
    @Autowired
    private PostDaoInterface postDaoInt;
    
    
    

    @Override
    public void addPost(Post post) {
        postDaoInt.addPost(post);
    }

    @Override
    public void updatePost(Post post) {
    }

    @Override
    public List<Post> listPost() {
        return null;
    }

    @Override
    public Post getPostById(Integer Id) {
        return null;
    }

    @Override
    public void removePost(Integer Id) {
    }
    
}

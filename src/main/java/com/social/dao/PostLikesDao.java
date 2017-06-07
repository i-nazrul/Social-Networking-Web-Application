/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

import com.social.entity.PostLikes;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author B1
 */
public class PostLikesDao implements PostLikesDaoInterface{
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addPostLikes(PostLikes postLikes) {
    }

    @Override
    public void updatePostLikes(PostLikes postLikes) {
    }

    @Override
    public List<PostLikes> listPostLikes() {
        return null;
    }

    @Override
    public PostLikes getPostLikesById(Integer Id) {
        return null;
    }

    @Override
    public void removePostLikes(Integer Id) {
    }
    
}

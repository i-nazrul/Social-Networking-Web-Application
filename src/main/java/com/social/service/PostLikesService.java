/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.service;

import com.social.dao.PostLikesDaoInterface;
import com.social.entity.PostLikes;
import java.util.List;

/**
 *
 * @author B1
 */
public class PostLikesService implements PostLikesServiceInterface{
    
    private PostLikesDaoInterface postLikesDaoInt;

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

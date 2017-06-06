/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.service;

import com.social.entity.Post;
import java.util.List;

/**
 *
 * @author B3
 */
public interface PostServiceInterface {
    
    public void addPost(Post post);

    public void updatePost(Post post);

    public List<Post> listPost();

    public Post getPostById(Integer Id);

    public void removePost(Integer Id);
}

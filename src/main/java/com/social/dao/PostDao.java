/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

import com.social.entity.Post;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author B3
 */
@Transactional
@Repository
public class PostDao implements PostDaoInterface{
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addPost(Post post) {
        sessionFactory.getCurrentSession().save(post);
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

import com.social.entity.PostLikes;
import java.util.List;

/**
 *
 * @author B1
 */
public interface PostLikesDaoInterface {

    public void addPostLikes(PostLikes postLikes);

    public void updatePostLikes(PostLikes postLikes);

    public List<PostLikes> listPostLikes();

    public PostLikes getPostLikesById(Integer Id);

    public void removePostLikes(Integer Id);
}

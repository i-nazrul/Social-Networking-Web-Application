/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

import com.social.entity.FriendRequest;
import java.util.List;

/**
 *
 * @author Hridoy
 */
public interface FriendRequestDaoInterface {
    
    public List<FriendRequest> add(FriendRequest fr);

    public List<FriendRequest> update(FriendRequest fr);

    public List<FriendRequest> getAll();

    public FriendRequest getById(Integer Id);

    public void remove(Integer Id);
}

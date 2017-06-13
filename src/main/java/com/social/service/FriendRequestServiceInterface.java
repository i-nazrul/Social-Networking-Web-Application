/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.service;

import com.social.entity.FriendRequest;
import com.social.entity.Users;
import java.util.List;

/**
 *
 * @author Hridoy
 */
public interface FriendRequestServiceInterface {
    
    public List<FriendRequest> add(FriendRequest fr);

    public List<FriendRequest> update(FriendRequest fr);
    
    public List<Users> reject(FriendRequest fr);

    public List<FriendRequest> getAll();

    public FriendRequest getById(Integer Id);

    public void remove(Integer Id);
    
}

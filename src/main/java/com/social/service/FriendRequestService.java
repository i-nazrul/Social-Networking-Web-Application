/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.service;

import com.social.dao.FriendRequestDaoInterface;
import com.social.entity.FriendRequest;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Hridoy
 */
@Service
public class FriendRequestService implements FriendRequestServiceInterface{
    
    @Autowired
    private FriendRequestDaoInterface frdi;

    @Override
    public List<FriendRequest> add(FriendRequest fr) {
        return frdi.add(fr);
    }

    @Override
    public List<FriendRequest> update(FriendRequest fr) {
        return frdi.update(fr);
    }

    @Override
    public List<FriendRequest> getAll() {
        return null;
    }

    @Override
    public FriendRequest getById(Integer Id) {
        return null;
    }

    @Override
    public void remove(Integer Id) {
    }
    
}

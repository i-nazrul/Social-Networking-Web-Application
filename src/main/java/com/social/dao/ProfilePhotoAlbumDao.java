/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

import com.social.entity.ProfilePhotoAlbum;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author B1
 */
public class ProfilePhotoAlbumDao implements ProfilePhotoAlbumDaoInterface{
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addProfilePhotoAlbum(ProfilePhotoAlbum profilePhotoAlbum) {
    }

    @Override
    public void updateProfilePhotoAlbum(ProfilePhotoAlbum profilePhotoAlbum) {
    }

    @Override
    public List<ProfilePhotoAlbum> listProfilePhotoAlbum() {
        return null;
    }

    @Override
    public ProfilePhotoAlbum getProfilePhotoAlbumById(Integer Id) {
        return null;
    }

    @Override
    public void removeProfilePhotoAlbum(Integer Id) {
    }
    
}

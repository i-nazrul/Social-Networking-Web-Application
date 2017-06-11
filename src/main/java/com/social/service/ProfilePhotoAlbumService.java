                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.service;

import com.social.dao.PhotoDaoInterface;
import com.social.dao.ProfilePhotoAlbumDaoInterface;
import com.social.entity.ProfilePhotoAlbum;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author B1
 */
@Service
public class ProfilePhotoAlbumService implements ProfilePhotoAlbumServiceInterface{
    
    @Autowired
    private ProfilePhotoAlbumDaoInterface ppadi;

    @Override
    public ProfilePhotoAlbum addProfilePhoto(ProfilePhotoAlbum ppa) {
       return ppadi.addProfilePhoto(ppa);
    }

    @Override
    public void updateProfilePhotoAlbum(ProfilePhotoAlbum profilePhotoAlbum) {
    }

    @Override
    public ProfilePhotoAlbum getProfilePhoto(Integer userId) {
        return ppadi.getProfilePhoto(userId);
    }

    @Override
    public ProfilePhotoAlbum getProfilePhotoAlbumById(Integer Id) {
        return null;
    }

    @Override
    public void removeProfilePhotoAlbum(Integer Id) {
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.service;

import com.social.entity.ProfilePhotoAlbum;
import java.util.List;

/**
 *
 * @author B1
 */
public interface ProfilePhotoAlbumServiceInterface {
    
    public void addProfilePhoto(ProfilePhotoAlbum ppa);

    public void updateProfilePhotoAlbum(ProfilePhotoAlbum profilePhotoAlbum);

    public ProfilePhotoAlbum getProfilePhoto(Integer userId);

    public ProfilePhotoAlbum getProfilePhotoAlbumById(Integer Id);

    public void removeProfilePhotoAlbum(Integer Id);
    
}

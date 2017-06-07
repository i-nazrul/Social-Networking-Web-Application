/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

import com.social.entity.PhotoAlbum;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author B1
 */
public class PhotoAlbumDao implements PhotoAlbumDaoInterface{  
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addPhotoAlbum(PhotoAlbum photoAlbum) {
    }

    @Override
    public void updatePhotoAlbum(PhotoAlbum photoAlbum) {
    }

    @Override
    public List<PhotoAlbum> listPhotoAlbum() {
        return null;
    }

    @Override
    public PhotoAlbum getPhotoAlbumById(Integer Id) {
        return null;
    }

    @Override
    public void removePhotoAlbum(Integer Id) {
    }
    
}

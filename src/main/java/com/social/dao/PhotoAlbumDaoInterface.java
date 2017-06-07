/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

import com.social.entity.PhotoAlbum;
import java.util.List;

/**
 *
 * @author B1
 */
public interface PhotoAlbumDaoInterface {
    
    public void addPhotoAlbum(PhotoAlbum photoAlbum);

    public void updatePhotoAlbum(PhotoAlbum photoAlbum);

    public List<PhotoAlbum> listPhotoAlbum();

    public PhotoAlbum getPhotoAlbumById(Integer Id);

    public void removePhotoAlbum(Integer Id);
    
}

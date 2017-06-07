/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

import com.social.entity.Photo;
import java.util.List;

/**
 *
 * @author B1
 */
public interface PhotoDaoInterface {

    public void addPhoto(Photo photo);

    public void updatePhoto(Photo photo);

    public List<Photo> listPhoto();

    public Photo getPhotoById(Integer Id);

    public void removePhoto(Integer Id);

}

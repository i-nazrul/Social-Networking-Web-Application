/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.service;

import com.social.dao.PhotoDaoInterface;
import com.social.entity.Photo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author B1
 */
public class PhotoService implements PhotoServiceInterface {

    @Autowired
    private PhotoDaoInterface photoDaoInt;

    @Override
    public void addPhoto(Photo photo) {
    }

    @Override
    public void updatePhoto(Photo photo) {
    }

    @Override
    public List<Photo> listPhoto() {
        return null;
    }

    @Override
    public Photo getPhotoById(Integer Id) {
        return null;
    }

    @Override
    public void removePhoto(Integer Id) {
    }

}

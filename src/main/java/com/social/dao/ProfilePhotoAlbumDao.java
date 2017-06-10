/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

import com.social.entity.ProfilePhotoAlbum;
import com.social.entity.Users;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author B1
 */
@Transactional
@Repository
public class ProfilePhotoAlbumDao implements ProfilePhotoAlbumDaoInterface{
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addProfilePhoto(ProfilePhotoAlbum ppa) {
        sessionFactory.getCurrentSession().save(ppa);
    }

    @Override
    public void updateProfilePhotoAlbum(ProfilePhotoAlbum profilePhotoAlbum) {
    }

    @Override
    public ProfilePhotoAlbum getProfilePhoto(Integer userId) {
        
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM ProfilePhotoAlbum u WHERE u.userId=:userId ");

        query.setInteger("userId", userId);
        
        List<ProfilePhotoAlbum> cList = query.list();
        cList.toString();
//        System.out.println(cList.size());
//        System.out.println("Dao");
        return cList.size() > 0 ? cList.get(0) : null;
    }

    @Override
    public ProfilePhotoAlbum getProfilePhotoAlbumById(Integer Id) {
        return null;
    }

    @Override
    public void removeProfilePhotoAlbum(Integer Id) {
    }
    
}

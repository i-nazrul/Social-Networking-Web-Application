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
    public ProfilePhotoAlbum addProfilePhoto(ProfilePhotoAlbum ppa) {
        
        Session session1 = sessionFactory.getCurrentSession();
        Query query1 = session1.createQuery("UPDATE ProfilePhotoAlbum p SET p.status=:zero Where p.status=:one");
        query1.setInteger("zero", 0);
        query1.setInteger("one", 1);
        query1.executeUpdate();
        
        sessionFactory.getCurrentSession().save(ppa);
        Session session2 = sessionFactory.getCurrentSession();
        Query query2 = session2.createQuery("FROM ProfilePhotoAlbum p WHERE p.userId=:userId and p.status=:status");

        query2.setInteger("userId", 21);
        query2.setInteger("status", 1);

        List<ProfilePhotoAlbum> cList2 = query2.list();
        cList2.toString();
        for(ProfilePhotoAlbum p : cList2){
            System.out.println("PPA DAO1: "+p.getProfilePhotoId()+" "+p.getUserId()+" "+p.getFileLink()+" "+p.getStatus());
        }
        ppa = cList2.get(0);
        return ppa;
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

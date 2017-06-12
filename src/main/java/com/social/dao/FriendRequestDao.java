/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

import com.social.entity.FriendRequest;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfig;

/**
 *
 * @author Hridoy
 */
@Transactional
@Repository
public class FriendRequestDao implements FriendRequestDaoInterface {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<FriendRequest> add(FriendRequest fr) {
        Session session2 = sessionFactory.getCurrentSession();
        Query query2 = session2.createQuery("FROM FriendRequest u WHERE u.userIdTo=:userIdTo and u.status=:status");

        query2.setInteger("userIdTo", fr.getUserIdTo());
        query2.setInteger("status", 0);

        List<FriendRequest> cList2 = query2.list();
        cList2.toString();
        if (cList2.size() > 0) {
            System.out.println("List Size " + cList2.size());
            Session session1 = sessionFactory.getCurrentSession();
            Query query1 = session1.createQuery("UPDATE FriendRequest p SET p.status=:one Where p.status=:zero and p.userIdTo=:userIdTo");
            query1.setInteger("one", 1);
            query1.setInteger("zero", 0);
            query1.setInteger("userIdTo", fr.getUserIdTo());
            query1.executeUpdate();
        } else {
            System.out.println("List Size " + cList2.size());
            sessionFactory.getCurrentSession().save(fr);
        }

        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM FriendRequest u WHERE u.userIdFrom=:userIdFrom and u.status=:status");

        query.setInteger("userIdFrom", fr.getUserIdFrom());
        query.setInteger("status", fr.getStatus());

        List<FriendRequest> cList = query.list();
        cList.toString();

        return cList;
    }

    @Override
    public List<FriendRequest> update(FriendRequest fr) {
        sessionFactory.getCurrentSession().update(fr);

        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM FriendRequest u WHERE u.userIdFrom=:userIdFrom and u.status=:status");

        query.setInteger("userIdFrom", fr.getUserIdFrom());
        query.setInteger("status", 1);

        List<FriendRequest> cList = query.list();
        cList.toString();

        return cList;
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

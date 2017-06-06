/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

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
 * @author B14
 */
@Transactional
@Repository
public class UsersDao implements IUsersDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addUser(Users user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public Users updateUser(Users user) {
        sessionFactory.getCurrentSession().update(user);
        return loginUser(user.getEmail(), user.getPassword());
    }

    @Override
    public List<Users> listUser() {
        return sessionFactory.getCurrentSession().createQuery("from Users").list();
    }

    @Override
    public Users getUserById(Integer Id) {
        Session session = sessionFactory.getCurrentSession();
        List<Users> list = session.createQuery("from Users u where u.userId=:userId").setParameter("userId", Id).list();
        for(Users u : list){
        System.out.println(u.getFirstName()+" "+u.getLastName());}
        return list.size() > 0 ? (Users) list.get(0) : null;
    }

    @Override
    public void removeUser(Integer Id) {
        Users user = (Users) sessionFactory.getCurrentSession().load(Users.class, Id);
        if (user != null) {
            sessionFactory.getCurrentSession().delete(user);
        }
    }

    @Override
    public Users loginUser(String email, String password) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM Users u WHERE u.email=:email and u.password=:password");

        query.setString("email", email);
        query.setString("password", password);

        List<Users> cList = query.list();
        cList.toString();
        System.out.println(cList.size());
        System.out.println("Dao");
        return cList.size() > 0 ? cList.get(0) : null;
    }
    

}

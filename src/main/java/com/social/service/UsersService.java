/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.service;

import com.social.dao.IUsersDao;
import com.social.entity.Users;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author B14
 */
@Service
public class UsersService implements IUsersService {

    @Autowired
    IUsersDao userDao;

    @Override
    @Transactional
    public void addUser(Users user) {
        userDao.addUser(new Users(user.getFirstName(), user.getLastName(), user.getEmail(),
                user.getPassword(), user.getDay(), user.getMonth(), user.getYear(), user.getSex(), 1, new Date() ));
    }

    @Override
    @Transactional
    public void updateUser(Users user) {
        userDao.updateUser(new Users(user.getUserId(), user.getFirstName(), user.getLastName(), user.getEmail(),
                user.getPassword(), user.getDay(), user.getMonth(), user.getYear(), user.getSex(), 1, new Date() ));
    }

    @Override
    @Transactional
    public List<Users> listUser() {
        return userDao.listUser();
    }

    @Override
    @Transactional
    public Users getUserById(Integer Id) {
        return userDao.getUserById(Id);
    }

    @Override
    @Transactional
    public void removeUser(Integer Id) {
        userDao.removeUser(Id);
    }

    @Override
    @Transactional
    public Users loginUsers(Users user) {
        return userDao.loginUser(user.getEmail(), user.getPassword());
    }

}

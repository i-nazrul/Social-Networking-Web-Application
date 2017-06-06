/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.dao;

import com.social.entity.Users;
import java.util.List;

/**
 *
 * @author B14
 */
public interface IUsersDao {

    public void addUser(Users user);

    public Users updateUser(Users user);

    public List<Users> listUser();

    public Users getUserById(Integer Id);

    public void removeUser(Integer Id);
    
    public Users loginUser(String email, String password);
}

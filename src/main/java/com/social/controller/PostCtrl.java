/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.controller;

import com.social.service.PostServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author B3
 */
public class PostCtrl {
    @Autowired
    private PostServiceInterface postServInt;
}

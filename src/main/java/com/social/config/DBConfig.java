/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.social.config;

import com.social.entity.Comment;
import com.social.entity.CommentLikes;
import com.social.entity.Conversation;
import com.social.entity.ConversationReply;
import com.social.entity.CoverPhotoAlbum;
import com.social.entity.Friend;
import com.social.entity.FriendRequest;
import com.social.entity.Photo;
import com.social.entity.PhotoAlbum;
import com.social.entity.Post;
import com.social.entity.PostLikes;
import com.social.entity.ProfilePhotoAlbum;
import com.social.entity.Share;
import com.social.entity.UserProfile;
import com.social.entity.Users;
import com.social.entity.Video;
import com.social.entity.VideoAlbum;
import com.social.entity.WallPhotoAlbum;
import javax.sql.DataSource;
import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 *
 * @author B14
 */
@Configuration
@EnableTransactionManagement
public class DBConfig {

    @Bean
    public DataSource getDataSource() {
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/socialsite");
        dataSource.setUsername("root");
        dataSource.setPassword("1234");
        return dataSource;
    }

    @Autowired
    @Bean
    public SessionFactory getSessionFactory() {

        LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(getDataSource());

        sessionBuilder.addAnnotatedClasses(Users.class);
        sessionBuilder.addAnnotatedClasses(Comment.class);
        sessionBuilder.addAnnotatedClasses(CommentLikes.class);
        sessionBuilder.addAnnotatedClasses(Conversation.class);
        sessionBuilder.addAnnotatedClasses(ConversationReply.class);
        sessionBuilder.addAnnotatedClasses(CoverPhotoAlbum.class);
        sessionBuilder.addAnnotatedClasses(Friend.class);
        sessionBuilder.addAnnotatedClasses(FriendRequest.class);
        sessionBuilder.addAnnotatedClasses(Photo.class);
        sessionBuilder.addAnnotatedClasses(PhotoAlbum.class);
        sessionBuilder.addAnnotatedClasses(Post.class);
        sessionBuilder.addAnnotatedClasses(PostLikes.class);
        sessionBuilder.addAnnotatedClasses(ProfilePhotoAlbum.class);
        sessionBuilder.addAnnotatedClasses(Share.class);
        sessionBuilder.addAnnotatedClasses(UserProfile.class);
        sessionBuilder.addAnnotatedClasses(Video.class);
        sessionBuilder.addAnnotatedClasses(VideoAlbum.class);
        sessionBuilder.addAnnotatedClasses(WallPhotoAlbum.class);

        return sessionBuilder.buildSessionFactory();
    }
    
    @Bean
    public HibernateTemplate hibernateTemplate() {
        return new HibernateTemplate(getSessionFactory());
    }

    @Bean
    public HibernateTransactionManager hibTransMan() {
        return new HibernateTransactionManager(getSessionFactory());
    }
}

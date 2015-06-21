package ru.rail.print4all.services.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ru.rail.print4all.mvc.model.UsersEntity;
import ru.rail.print4all.services.UserActions;

import javax.transaction.Transactional;
import java.io.Serializable;
import java.util.List;

/**
 * User: rakh1213
 */
@Repository
public class UserActionsImpl implements UserActions {

    @Autowired
    SessionFactory sessionFactory;

    @Transactional
    public UsersEntity getUser(int id) {
        UsersEntity user = (UsersEntity) sessionFactory.getCurrentSession().get(UsersEntity.class, id);
        return user;
    }

    @Transactional
    public List<UsersEntity> getAllUser() {
        return null;
    }

    @Transactional
    public int deleteUser(int id) {
        return 0;
    }

    @Transactional
    public UsersEntity updateUser(int id) {
        return null;
    }

    @Transactional
    public int createUser(UsersEntity user) {
        sessionFactory.getCurrentSession().saveOrUpdate(user);
        return user.getId();
    }

    @Transactional
    public boolean checkExist(UsersEntity user) {
        UsersEntity checkUser = (UsersEntity) sessionFactory.getCurrentSession().get(UsersEntity.class, (Serializable) user);
        return checkUser != null;
    }
}

package ru.rail.print4all.services.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ru.rail.print4all.mvc.model.User;
import ru.rail.print4all.services.UserActions;

import javax.transaction.Transactional;
import java.util.List;

/**
 * User: rakh1213
 */
@Repository
public class UserActionsImpl implements UserActions {

    @Autowired
    SessionFactory sessionFactory;

    @Transactional
    public User getUser(int id) {
        User user = (User) sessionFactory.getCurrentSession().get(User.class, id);
        return user;
    }

    @Transactional
    public List<User> getAllUser() {
        return null;
    }

    @Transactional
    public int deleteUser(int id) {
        return 0;
    }

    @Transactional
    public User updateUser(int id) {
        return null;
    }

    @Transactional
    public int createUser(User user) {
        sessionFactory.getCurrentSession().saveOrUpdate(user);
        return user.getId();
    }

    @Transactional
    public boolean checkExist(User user) {
        User checkUser = (User) sessionFactory.getCurrentSession().get(User.class, user);
        return checkUser != null;
    }
}

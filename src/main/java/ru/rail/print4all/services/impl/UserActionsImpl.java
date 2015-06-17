package ru.rail.print4all.services.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import ru.rail.print4all.mvc.model.User;
import ru.rail.print4all.services.UserActions;

import java.util.List;

/**
 * User: rakh1213
 */
public class UserActionsImpl implements UserActions {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public User getUser(int id) {
        User user = (User) sessionFactory.getCurrentSession().get(User.class, id);
        return user;
    }

    @Override
    public List<User> getAllUser() {
        return null;
    }

    @Override
    public int deleteUser(int id) {
        return 0;
    }

    @Override
    public User updateUser(int id) {
        return null;
    }

    @Override
    public int createUser(User user) {
        sessionFactory.getCurrentSession().saveOrUpdate(user);
        return user.getId();
    }
}

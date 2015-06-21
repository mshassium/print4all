package ru.rail.print4all.services;

import ru.rail.print4all.mvc.model.User;

import java.util.List;

/**
 * User: rakh1213
 */
public interface UserActions {

    public User getUser(int id);

    public List<User> getAllUser();

    public int deleteUser(int id);

    public User updateUser(int id);

    public int createUser(User user);

    boolean checkExist(User user);
}

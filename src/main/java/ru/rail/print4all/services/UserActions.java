package ru.rail.print4all.services;

import ru.rail.print4all.mvc.model.UsersEntity;

import java.util.List;

/**
 * User: rakh1213
 */
public interface UserActions {

    public UsersEntity getUser(int id);

    public List<UsersEntity> getAllUser();

    public int deleteUser(int id);

    public UsersEntity updateUser(int id);

    public int createUser(UsersEntity user);

    boolean checkExist(UsersEntity user);
}

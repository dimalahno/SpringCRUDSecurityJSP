package spring_mvc_example.dao;

import spring_mvc_example.model.User;

import java.util.List;

public interface UserDao extends GenericDao<Integer, User> {

    User getUserByUserName(String userName);
    void updateUserById(Integer id, User user);
}

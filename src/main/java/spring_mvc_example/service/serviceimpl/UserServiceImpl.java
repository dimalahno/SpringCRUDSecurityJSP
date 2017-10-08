package spring_mvc_example.service.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring_mvc_example.dao.UserDao;
import spring_mvc_example.model.Role;
import spring_mvc_example.model.User;
import spring_mvc_example.service.UserService;


import java.util.List;
import java.util.Set;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;


    @Override
    public User getUserByUsername(String username) {
        return userDao.getUserByUserName(username);
    }

    @Override
    public User getUserById(Integer id) {
        return userDao.getByKey(id);
    }

    @Override
    public void addUser(User user) {
        userDao.persist(user);
    }

    @Override
    public List<User> getAllUser() {
        return userDao.getAll();
    }

    @Override
    public void deleteUserById(Integer id) {
        userDao.deleteByKey(id);
    }

    @Override
    public void updateUser(User user) {
        userDao.update(user);
    }

    @Override
    public Set<Role> getUserRoles(String username) {
        return userDao.getUserByUserName(username).getRoles();
    }

    @Override
    public void updateUserById(Integer id, User user) {
        userDao.updateUserById(id, user);
    }


}

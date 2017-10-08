package spring_mvc_example.service;

import spring_mvc_example.model.Role;
import spring_mvc_example.model.User;

import java.util.List;
import java.util.Set;

public interface UserService {

    User getUserByUsername(String username);

    User getUserById(Integer id);

    void addUser(User user);

    List<User> getAllUser();

    void deleteUserById(Integer id);

    void updateUser(User user);

    Set<Role> getUserRoles(String username);

    void updateUserById(Integer id, User user);
}

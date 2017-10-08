package spring_mvc_example.service;

import spring_mvc_example.model.Role;

import java.util.List;

public interface RoleService {

    void addRole(Role role);

    Role getRoleByRoleName(String roleName);

    Role getRoleById(Integer id);

    List<Role> getAllRoles();

    void updateRoles(Role role);

    void deleteRoleById(Integer id);
}

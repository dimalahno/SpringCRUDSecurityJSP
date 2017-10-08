package spring_mvc_example.dao;



import spring_mvc_example.model.Role;

public interface RoleDao extends GenericDao<Integer, Role>{

    Role getRoleByRoleName(String roleName);
}

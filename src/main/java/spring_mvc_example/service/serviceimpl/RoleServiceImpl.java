package spring_mvc_example.service.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import spring_mvc_example.dao.RoleDao;
import spring_mvc_example.model.Role;
import spring_mvc_example.service.RoleService;

import java.util.List;

@Transactional
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDao roleDao;


    @Override
    public void addRole(Role role) {
        roleDao.persist(role);
    }

    @Override
    public Role getRoleByRoleName(String roleName) {
        return roleDao.getRoleByRoleName(roleName);
    }

    @Override
    public Role getRoleById(Integer id) {
        return roleDao.getByKey(id);
    }

    @Override
    public List<Role> getAllRoles() {
        return roleDao.getAll();
    }

    @Override
    public void updateRoles(Role role) {
        roleDao.update(role);
    }

    @Override
    public void deleteRoleById(Integer id) {
        roleDao.deleteByKey(id);
    }
}

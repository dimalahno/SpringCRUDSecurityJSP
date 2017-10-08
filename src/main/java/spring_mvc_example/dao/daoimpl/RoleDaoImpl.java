package spring_mvc_example.dao.daoimpl;


import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import spring_mvc_example.dao.RoleDao;
import spring_mvc_example.model.Role;


@Transactional
@Repository
public class RoleDaoImpl extends AbstractDao<Integer, Role> implements RoleDao {

    @Override
    public Role getRoleByRoleName(String roleName) {
        return (Role) getSession().createQuery("FROM Role WHERE roleName = :roleName").setParameter("roleName", roleName).uniqueResult();
    }
}

package spring_mvc_example.dao.daoimpl;


import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import spring_mvc_example.dao.UserDao;
import spring_mvc_example.model.User;


@Transactional
@Repository
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {


    @Override
    //@SuppressWarnings("unchecked")
    public User getUserByUserName(String username) {
        return (User) entityManager.createQuery("SELECT u FROM User u WHERE u.name LIKE :username")
                                   .setParameter("username", username)
                                   .getSingleResult();
    }

    @Override
    public void updateUserById(Integer id, User user) {
        User updateUser = super.getByKey(id);
        updateUser.setName(user.getName());
        updateUser.setAge(user.getAge());
        updateUser.setEmail(user.getEmail());
        updateUser.setPassword(user.getPassword());
        super.update(updateUser);
    }
}

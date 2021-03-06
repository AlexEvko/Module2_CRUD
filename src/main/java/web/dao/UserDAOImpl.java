package web.dao;

import org.springframework.stereotype.Repository;
import web.model.User;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO{

    @PersistenceContext
    EntityManager entityManager;
    //контейнер ЕМ,потокобезопасный,не нужно закрывать и делать мозги

    @Override
    public List<User> getAllUsers() {
        return entityManager.createQuery("SELECT users FROM User users", User.class).getResultList();
    }

    @Override
    public void saveUser(User user) {
        if (user.getId() != null){
            entityManager.merge(user);
        }else {
            entityManager.persist(user);
        }
    }

    @Override
    public User getUser(Long id) {
        return entityManager.find(User.class, id);
    }

    @Override
    public void deleteUser(Long id) {
        entityManager.createQuery("DELETE FROM User user WHERE user.id = :userId")
                .setParameter("userId", id)
                .executeUpdate();
    }
}

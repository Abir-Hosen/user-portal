package net.abir.portalbackend.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.abir.portalbackend.dao.UserDao;
import net.abir.portalbackend.dto.User;

@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public boolean addUser(User user) {
		try {
			sessionFactory.getCurrentSession().persist(user);
			return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<User> userList() {
		return sessionFactory .getCurrentSession()
				.createQuery("FROM User", User.class).getResultList();
	}

	public User getByEmail(String email) {
		String selectQuery = "FROM User WHERE email = :email";
		try {
			return sessionFactory.getCurrentSession().createQuery(selectQuery, User.class)
					.setParameter("email", email).getSingleResult();
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean updatePassword(User user) {
		try {
			sessionFactory.getCurrentSession().update(user);
			return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}


}

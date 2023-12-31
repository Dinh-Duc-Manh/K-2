package btl.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import btl.dao.DaoAll;
import btl.entities.Account;
import btl.entities.Products;

@Repository
public class AccountDaoImpl implements DaoAll<Account> {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Account findByName(String username) {
		Session session = sessionFactory.openSession();
		try {
			Account ac = (Account) session.createQuery("from Account where userName = :userName")
					.setParameter("userName", username).uniqueResult();
			return ac;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public List<Account> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(Account op) {
		Session session = sessionFactory.openSession();
		op.setPassword(BCrypt.hashpw(op.getPassword(), BCrypt.gensalt(12)));
		try {
			session.beginTransaction();
			session.save(op);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean updete(Account op) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Account op) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Account findById(Long id) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Account c = (Account) session.createQuery("from Account where id = :id").setParameter("id", id)
					.uniqueResult();
			session.getTransaction().commit();
			return c;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return null;
	}

}

package com.addressbook.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.addressbook.model.Contact;
import com.addressbook.model.User;

public class AddressBookDAOImpl implements AddressBookDAO {

	@Autowired
	 SessionFactory sessionFactory;

	@Override
	public int addUser(User user) {
		 Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(user);
		  tx.commit();
		  Serializable id = session.getIdentifier(user);
		  session.close();
		  return (Integer) id;

	}


	@Override
	public List<User> getList() {
		  Session session = sessionFactory.openSession();
		  @SuppressWarnings("unchecked")
		  List<User> userLists = session.createQuery("from User")
		    .list();
		  session.close();
		  return userLists;
	}
	
	@Override
	public int addContact(Contact contact) {
		 Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(contact);
		  tx.commit();
		  Serializable id = session.getIdentifier(contact);
		  session.close();
		  return (Integer) id;

	}
	
	@Override
	public List<Contact> getContact(int userId) {
		  Session session = sessionFactory.openSession();
		  @SuppressWarnings("unchecked")
		  List<Contact> contactList = session.createQuery("from Contact c where c.userId = :user_id")
		  .setParameter("user_id", userId)
		    .list();
		  session.close();
		  return contactList;
	}
	
	@Override
	public Long countContact(int userId){
		 Session session = sessionFactory.openSession();
		Long cnt = (Long) session.createQuery("select count(*) from Contact c where c.userId = :user_id")
				.setParameter("user_id", userId)
				.uniqueResult();
		return cnt;
	}

}

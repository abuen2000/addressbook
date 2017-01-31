package com.addressbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.addressbook.dao.AddressBookDAO;
import com.addressbook.model.Contact;
import com.addressbook.model.User;

@Service
public class AddressBookServiceImpl implements AddressBookService {
	
	@Autowired
	AddressBookDAO addressBookDAO;

	@Override
	public int addUser(User user) {
		return addressBookDAO.addUser(user);
	}

	@Override
	public List<User> listUsers() {
		return addressBookDAO.getList();
	}
	
	@Override
	public int addContact(Contact contact){
		return addressBookDAO.addContact(contact);
	}

	@Override
	public List<Contact> getContact(int userId){
		return addressBookDAO.getContact(userId);
	}
	
	@Override
	public Long countContact(int userId){
		return addressBookDAO.countContact(userId);
	}
}

package com.addressbook.dao;

import java.util.List;

import com.addressbook.model.Contact;
import com.addressbook.model.User;

public interface AddressBookDAO {

	int addUser(User user);

	List<User> getList();
	
	int addContact(Contact contact);
	List<Contact> getContact(int userId);
	Long countContact(int userId);
}

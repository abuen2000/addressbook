package com.addressbook.service;

import java.util.List;

import com.addressbook.model.Contact;
import com.addressbook.model.User;

public interface AddressBookService {

	public int addUser(User user);
	public List<User> listUsers();
	public int addContact(Contact contact);
	public List<Contact> getContact(int userID);
	public Long countContact(int userId);
}

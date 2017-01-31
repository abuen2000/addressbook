package com.addressbook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.addressbook.model.Contact;
import com.addressbook.model.User;
import com.addressbook.service.AddressBookService;

@Controller
public class AddressBookController {

	@Autowired
	AddressBookService addressBookService; 
	
	 @RequestMapping("form")
	 public ModelAndView getForm(@ModelAttribute User user) {
	  return new ModelAndView("form");
	 }
	 
	 @RequestMapping("formcontact")
	 public ModelAndView getFormContact(@ModelAttribute Contact contact , @RequestParam("userid") int userid) {
		 contact.setUserId(userid);
	  return new ModelAndView("addContact");
	 }

	 @RequestMapping("addUser")
	 public ModelAndView registerUser(@ModelAttribute User user) {
		
		 addressBookService.addUser(user);
	  return new ModelAndView("redirect:list");
	 }
	 
	 @RequestMapping("list")
	 public ModelAndView getList() {
	  List<User> userList = addressBookService.listUsers();
	  return new ModelAndView("list", "usserList", userList);
	 }
	 
	 @RequestMapping("addContact")
	 public ModelAndView addContact(@ModelAttribute Contact contact, BindingResult result) {
		 
//		 int count = countContact(contact.getUserId());
		 if(countContact(contact.getUserId()) < 3){
			 addressBookService.addContact(contact);
		 }				 
		
	  return new ModelAndView("redirect:list");
	 }
	 
	 @RequestMapping("getContact")
	 public ModelAndView getContact(@RequestParam("userid") int userid) {
	  List<Contact> userContactList = addressBookService.getContact(userid);
	  return new ModelAndView("getContact", "ContactList", userContactList);
	 }
	 
	 
	 private Long countContact(int userId){
		 return addressBookService.countContact(userId);
	 }
}
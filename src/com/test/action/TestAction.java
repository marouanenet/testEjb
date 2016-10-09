package com.test.action;

import java.util.List;

import com.test.model.Contact;
import com.test.service.ContactService;
import com.test.service.impl.ServiceFactory;

public class TestAction extends BaseAction {
	private static final long serialVersionUID = 1501225591749246879L;

	private List<Contact> contacts;

	private ContactService contactService = ServiceFactory.getContactService();

	public String init() {
		contacts = contactService.findAll();
		return SUCCESS;
	}

	public List<Contact> getContacts() {
		return contacts;
	}

	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}
}

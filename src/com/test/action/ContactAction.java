package com.test.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.test.model.Contact;
import com.test.service.ContactService;
import com.test.service.impl.ServiceFactory;

public class ContactAction extends BaseAction {
	private static final long serialVersionUID = -2526392456020300066L;

	private List<Contact> contacts;
	private Contact contact;

	private ContactService contactService = ServiceFactory.getContactService();

	public void prepareAdd() {
		contacts = contactService.findAll();
	}

	public String contacts() {
		contacts = contactService.findAll();
		return SUCCESS;
	}

	public String add() {
		contactService.persist(contact);
		return SUCCESS;
	}

	public String delete() {
		contactService.remove(contact.getId());
		return SUCCESS;
	}

	public List<Contact> getContacts() {
		return contacts;
	}

	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}

	public Contact getContact() {
		return contact;
	}

	public void setContact(Contact contact) {
		this.contact = contact;
	}

	public void validateAdd() {
		if (StringUtils.isBlank(contact.getName())) {
			addFieldError("name", "error msg");
		}
		System.out.println("###### validate Add");
	}
}

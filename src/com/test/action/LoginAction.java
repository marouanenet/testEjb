package com.test.action;

import java.io.IOException;

import javax.security.auth.login.LoginException;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.convention.annotation.ParentPackage;

import com.test.model.User;
import com.test.service.UserService;
import com.test.service.impl.ServiceFactory;
import com.test.utils.Constants;

@ParentPackage("struts-default")
public class LoginAction extends BaseAction {

	private static final long serialVersionUID = 358449120640591113L;

	private UserService userService = ServiceFactory.getUserService();

	private User user = new User();

	public String login() throws IOException {
		if (isConnected()) {
			return SUCCESS;
		}

		/*
		 * Valider les champs du Formulaire et remplir le message de la non
		 * validite
		 */
		User connectedUser = null;
		try {

			if (StringUtils.isBlank(user.getUsername())
					|| StringUtils.isBlank(user.getPassword())) {
				addFieldError("", "erreur authentification");
				return INPUT;
			}
			connectedUser = userService.getUserBy(user.getUsername(),
					user.getPassword());

			if (connectedUser == null) {
				throw new LoginException();
			}
			connect(connectedUser);

		} catch (final LoginException e) {
			addFieldError("", "erreur authentification");
			return INPUT;
		}
		return SUCCESS;
	}

	public String logout() {
		getSession().remove(Constants.USER);
		return SUCCESS;
	}

	protected boolean connect(final User user) {
		setCurrentUser(user);
		return true;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}

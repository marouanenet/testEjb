package com.test.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;
import com.test.model.User;
import com.test.utils.Constants;

public class BaseAction extends ActionSupport implements SessionAware,
		ServletRequestAware, ServletResponseAware, ApplicationAware, Preparable {

	private static final long serialVersionUID = 2879065299676083179L;
	protected static final Logger LOGGER = Logger.getLogger(BaseAction.class);

	private HttpServletRequest request;
	private HttpServletResponse response;
	private Map<String, Object> session = ActionContext.getContext()
			.getSession();

	public BaseAction() {

	}

	public final void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	protected Object getRequestAttribute(String key) {
		return request.getAttribute(key);
	}

	protected Object getRequestParameter(String key) {
		return request.getParameter(key);
	}

	protected void setRequestAttribute(String key, Object object) {
		request.setAttribute(key, object);
	}

	public final void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	protected HttpServletResponse getResponse() {
		return response;
	}

	protected HttpServletRequest getRequest() {
		return request;
	}

	@Override
	public void setApplication(Map<String, Object> arg0) {

	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void prepare() throws Exception {

	}

	protected boolean isConnected() {
		return getCurrentUser() != null;
	}

	public User getCurrentUser() {
		return (User) getSession().get(Constants.USER);
	}

	public void setCurrentUser(final User user) {
		getSession().put(Constants.USER, user);
	}

}

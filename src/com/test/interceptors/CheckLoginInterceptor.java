package com.test.interceptors;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.test.model.User;
import com.test.utils.Constants;

public class CheckLoginInterceptor extends AbstractInterceptor implements
		StrutsStatics {

	private static final long serialVersionUID = 2655465333470274674L;

	protected static final Logger LOGGER = Logger
			.getLogger(CheckLoginInterceptor.class);

	@Override
	public String intercept(final ActionInvocation invocation) throws Exception {
		final ActionContext context = invocation.getInvocationContext();
		final HttpServletRequest request = (HttpServletRequest) context
				.get(HTTP_REQUEST);
		final User user = (User) request.getSession().getAttribute(
				Constants.USER);
		String actionName = ActionContext.getContext().getActionInvocation()
				.getProxy().getActionName();
		if (user != null || "login".equals(actionName)) {
			return invocation.invoke();
		} else {
			return "sessionPerdu";
		}
	}

}

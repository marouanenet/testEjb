package com.test.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.test.model.Repertoire;
import com.test.model.User;
import com.test.service.RepertoireService;
import com.test.service.impl.ServiceFactory;

public class RepertoireAction extends BaseAction {
	private static final long serialVersionUID = -2526392456020300066L;
	private List<Repertoire> repertoires;
	private Repertoire repertoire;

	private RepertoireService repertoireService = ServiceFactory
			.getRepertoireService();

	public void prepareAdd() {
		// repertoires = repertoireService.findAll();

		repertoires = getCurrentUser().getRepertoires();
	}

	public String repertoires() {
		// repertoires = repertoireService.findAll();
		// pour afficher que les repertoires du user connecte
		repertoires = getCurrentUser().getRepertoires();
		return SUCCESS;
	}

	public String add() {

		// attribuer user à repertoire
		User user = getCurrentUser();
		repertoire.setUser(user);

		repertoireService.persist(repertoire);
		return SUCCESS;
	}

	public String delete() {
		repertoireService.remove(repertoire.getIdrep());
		return SUCCESS;
	}

	public List<Repertoire> getRepertoires() {
		return repertoires;
	}

	public void setRepertoires(List<Repertoire> repertoires) {
		this.repertoires = repertoires;
	}

	public Repertoire getRepertoire() {
		return repertoire;
	}

	public void setRepertoire(Repertoire repertoire) {
		this.repertoire = repertoire;
	}

	public void validateAdd() {
		if (StringUtils.isBlank(repertoire.getNumfixe())) {
			addFieldError("numfixe", "error msg");
		}
		System.out.println("###### validate Add");
	}

}

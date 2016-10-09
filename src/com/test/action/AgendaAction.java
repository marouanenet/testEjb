package com.test.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.test.model.Agenda;
import com.test.service.AgendaService;
import com.test.service.impl.ServiceFactory;

public class AgendaAction extends BaseAction {
	
	private static final long serialVersionUID = -2526392456020300066L;
	private List<Agenda> agendas;
	private Agenda agenda;
	private AgendaService agendaServise = ServiceFactory.getAgendaService();
	public void prepareAdd() {
		agendas= agendaServise.findAll();
	}
	public String agendas(){
		agendas= agendaServise.findAll();
		return SUCCESS;
	}
	
	public String add(){
		agendaServise.persist(agenda);
		return SUCCESS;
	}
	
	public String delete(){
		agendaServise.remove(agenda.getIdag());
		return SUCCESS;
	}
	public List<Agenda> getAgendas() {
		return agendas;
	}
	public void setAgendas(List<Agenda> agendas) {
		this.agendas = agendas;
	}
	public Agenda getAgenda() {
		return agenda;
	}
	public void setAgenda(Agenda agenda) {
		this.agenda = agenda;
	}
	
	public void validateAdd() {
		if (StringUtils.isBlank(agenda.getTitreeven())) {
			addFieldError("titre", "error msg");
		}
		System.out.println("###### validate Add");
	}
}

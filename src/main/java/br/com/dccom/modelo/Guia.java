package br.com.dccom.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Guia {
	
	/*
	 * Cabeçalho da Mensagem a ser transmitida
	 * 
	 */
	
	@Id
	@GeneratedValue
	@Column(name="guia_id")
	private int id;
	
	private String registroANS;
	
	private String numeroGuiaPrincipal;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRegistroANS() {
		return registroANS;
	}

	public void setRegistroANS(String registroANS) {
		this.registroANS = registroANS;
	}

	public String getNumeroGuiaPrincipal() {
		return numeroGuiaPrincipal;
	}

	public void setNumeroGuiaPrincipal(String numeroGuiaPrincipal) {
		this.numeroGuiaPrincipal = numeroGuiaPrincipal;
	}

}

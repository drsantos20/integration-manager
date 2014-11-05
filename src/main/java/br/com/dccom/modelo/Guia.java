package br.com.dccom.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

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

	private String dataEmissao;
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "guia")
	private Operadora operadora;
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "guia")
	private Beneficiario beneficiario;
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "guia")
	private Contratado contratado;
	
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "guia")
	private Profissional profissional;
	
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

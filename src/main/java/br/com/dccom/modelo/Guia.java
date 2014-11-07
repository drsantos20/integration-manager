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

	public String getDataEmissao() {
		return dataEmissao;
	}

	public void setDataEmissao(String dataEmissao) {
		this.dataEmissao = dataEmissao;
	}

	public Operadora getOperadora() {
		return operadora;
	}

	public void setOperadora(Operadora operadora) {
		this.operadora = operadora;
	}

	public Beneficiario getBeneficiario() {
		return beneficiario;
	}

	public void setBeneficiario(Beneficiario beneficiario) {
		this.beneficiario = beneficiario;
	}

	public Contratado getContratado() {
		return contratado;
	}

	public void setContratado(Contratado contratado) {
		this.contratado = contratado;
	}

	public Profissional getProfissional() {
		return profissional;
	}

	public void setProfissional(Profissional profissional) {
		this.profissional = profissional;
	}

}

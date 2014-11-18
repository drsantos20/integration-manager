package br.com.dccom.modelo;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Contratado") 
public class Contratado {
	
	@Id
	@GeneratedValue
	@Column(name="contratado_id")
	private int id;
	
	private String codigoContratado;
	private String nomeContratado;
	private String codigoPrestadorNaOperadora;
	private String cnpjOuCpfContratado;
	private String cnes;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "guia_id", nullable = true)
	private Guia guia;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCodigoContratado() {
		return codigoContratado;
	}
	public void setCodigoContratado(String codigoContratado) {
		this.codigoContratado = codigoContratado;
	}
	public String getNomeContratado() {
		return nomeContratado;
	}
	public void setNomeContratado(String nomeContratado) {
		this.nomeContratado = nomeContratado;
	}
	public String getCodigoPrestadorNaOperadora() {
		return codigoPrestadorNaOperadora;
	}
	public void setCodigoPrestadorNaOperadora(String codigoPrestadorNaOperadora) {
		this.codigoPrestadorNaOperadora = codigoPrestadorNaOperadora;
	}
	public String getCnpjOuCpfContratado() {
		return cnpjOuCpfContratado;
	}
	public void setCnpjOuCpfContratado(String cnpjOuCpfContratado) {
		this.cnpjOuCpfContratado = cnpjOuCpfContratado;
	}
	public String getCnes() {
		return cnes;
	}
	public void setCnes(String cnes) {
		this.cnes = cnes;
	}
	public Guia getGuia() {
		return guia;
	}
	public void setGuia(Guia guia) {
		this.guia = guia;
	}
}

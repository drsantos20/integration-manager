package br.com.dccom.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Contratado {
	
	@Id
	@GeneratedValue
	@Column(name="contratado_id")
	private int id;
	
	private String codigoPrestador;
	private String cpfContratado;
	private String cnpjContratado;
	private String nomeContratado;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCodigoPrestador() {
		return codigoPrestador;
	}
	public void setCodigoPrestador(String codigoPrestador) {
		this.codigoPrestador = codigoPrestador;
	}
	public String getCpfContratado() {
		return cpfContratado;
	}
	public void setCpfContratado(String cpfContratado) {
		this.cpfContratado = cpfContratado;
	}
	public String getCnpjContratado() {
		return cnpjContratado;
	}
	public void setCnpjContratado(String cnpjContratado) {
		this.cnpjContratado = cnpjContratado;
	}
	public String getNomeContratado() {
		return nomeContratado;
	}
	public void setNomeContratado(String nomeContratado) {
		this.nomeContratado = nomeContratado;
	}
}

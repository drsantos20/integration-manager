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
	
	private String codigoContratado;
	private String nomeContratado;
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
}

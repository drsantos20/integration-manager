package br.com.dccom.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Profissional {
	
	@Id
	@GeneratedValue
	@Column(name="profissional_id")
	private int id;
	
    protected String nomeProfissional;
    protected String conselhoProfissional;
    protected String numeroConselhoProfissional;
    protected String uf;
    protected String cbos;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNomeProfissional() {
		return nomeProfissional;
	}
	public void setNomeProfissional(String nomeProfissional) {
		this.nomeProfissional = nomeProfissional;
	}
	public String getConselhoProfissional() {
		return conselhoProfissional;
	}
	public void setConselhoProfissional(String conselhoProfissional) {
		this.conselhoProfissional = conselhoProfissional;
	}
	public String getNumeroConselhoProfissional() {
		return numeroConselhoProfissional;
	}
	public void setNumeroConselhoProfissional(String numeroConselhoProfissional) {
		this.numeroConselhoProfissional = numeroConselhoProfissional;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	public String getCbos() {
		return cbos;
	}
	public void setCbos(String cbos) {
		this.cbos = cbos;
	}
}

package br.com.dccom.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Profissional") 
public class Profissional {
	
	@Id
	@GeneratedValue
	@Column(name="profissional_id")
	private int id;
	
	private String nomeProfissional;
	private String conselhoProfissional;
	private String numeroConselhoProfissional;
	private String uf;
	private String cbos;
	private String dataSolicitacao;
	private String caraterSolicitacao;
	private String cid;
	private String indicacaoClinica;
    
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
	public String getDataSolicitacao() {
		return dataSolicitacao;
	}
	public void setDataSolicitacao(String dataSolicitacao) {
		this.dataSolicitacao = dataSolicitacao;
	}
	public String getCaraterSolicitacao() {
		return caraterSolicitacao;
	}
	public void setCaraterSolicitacao(String caraterSolicitacao) {
		this.caraterSolicitacao = caraterSolicitacao;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getIndicacaoClinica() {
		return indicacaoClinica;
	}
	public void setIndicacaoClinica(String indicacaoClinica) {
		this.indicacaoClinica = indicacaoClinica;
	}
}

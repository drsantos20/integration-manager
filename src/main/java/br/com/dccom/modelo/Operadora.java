package br.com.dccom.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Operadora") 
public class Operadora {
	
	@Id
	@GeneratedValue
	@Column(name="operadora_id")
	private int id;
	
	private String nome;
	
	private String registro_ans;
	
	private int ativo;
	
	@OneToOne
	@JoinColumn(name = "guia_id", nullable = true)
	private Guia guia;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getRegistro_ans() {
		return registro_ans;
	}

	public void setRegistro_ans(String registro_ans) {
		this.registro_ans = registro_ans;
	}

	public int getAtivo() {
		return ativo;
	}

	public void setAtivo(int ativo) {
		this.ativo = ativo;
	}

	public Guia getGuia() {
		return guia;
	}

	public void setGuia(Guia guia) {
		this.guia = guia;
	}
	
}

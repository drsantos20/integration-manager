package br.com.dccom.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Atendimento") 
public class Atendimento {
	
	@Id
	@GeneratedValue
	@Column(name="atendimento_id")
	private int id;
	private String data;
	private String codigoTabela;
	private String codigoProcedimento;
	private String recemNascido;
	
	//GUIA SP-SADT
	private String caraterAtendimento;
	private String indicacaoAcidente;
	private String motivoEncerramentoAtendimento;
	private int tipoConsulta;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getCodigoTabela() {
		return codigoTabela;
	}

	public void setCodigoTabela(String codigoTabela) {
		this.codigoTabela = codigoTabela;
	}

	public String getCodigoProcedimento() {
		return codigoProcedimento;
	}

	public void setCodigoProcedimento(String codigoProcedimento) {
		this.codigoProcedimento = codigoProcedimento;
	}

	public int getTipoConsulta() {
		return tipoConsulta;
	}

	public void setTipoConsulta(int tipoConsulta) {
		this.tipoConsulta = tipoConsulta;
	}

	public String getRecemNascido() {
		return recemNascido;
	}

	public void setRecemNascido(String recemNascido) {
		this.recemNascido = recemNascido;
	}

	public String getCaraterAtendimento() {
		return caraterAtendimento;
	}

	public void setCaraterAtendimento(String caraterAtendimento) {
		this.caraterAtendimento = caraterAtendimento;
	}

	public String getIndicacaoAcidente() {
		return indicacaoAcidente;
	}

	public void setIndicacaoAcidente(String indicacaoAcidente) {
		this.indicacaoAcidente = indicacaoAcidente;
	}

	public String getMotivoEncerramentoAtendimento() {
		return motivoEncerramentoAtendimento;
	}

	public void setMotivoEncerramentoAtendimento(
			String motivoEncerramentoAtendimento) {
		this.motivoEncerramentoAtendimento = motivoEncerramentoAtendimento;
	}
}

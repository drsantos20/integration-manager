package br.com.dccom.modelo;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Beneficiario") 
public class Beneficiario {

	@Id
	@GeneratedValue
	@Column(name="beneficiario_id")
	private int id;
	private String nome;
	private String cpf;
	private String email;
	private String nascimento;
	private String endereco;
	private String cidade;
	private String estado;
	private String cep;
	private String sexo;
	private String validadeCarteira;
	private String numeroCarteira;
	private String atendimentoRN;
	private String numeroCNS;
	private byte[] identificadorBeneficiario;
	//, cascade = CascadeType.ALL
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "beneficiario", cascade = CascadeType.ALL)
	private List<Telefone> telefone;
	
	@OneToOne
	@JoinColumn(name = "guia_id")
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public List<Telefone> getTelefone() {
		return telefone;
	}
	public void setTelefone(List<Telefone> telefone) {
		this.telefone = telefone;
	}
	public String getNascimento() {
		return nascimento;
	}
	public void setNascimento(String nascimento) {
		this.nascimento = nascimento;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getNumeroCarteira() {
		return numeroCarteira;
	}
	public void setNumeroCarteira(String numeroCarteira) {
		this.numeroCarteira = numeroCarteira;
	}
	public String getValidadeCarteira() {
		return validadeCarteira;
	}
	public void setValidadeCarteira(String validadeCarteira) {
		this.validadeCarteira = validadeCarteira;
	}
	public String getAtendimentoRN() {
		return atendimentoRN;
	}
	public void setAtendimentoRN(String atendimentoRN) {
		this.atendimentoRN = atendimentoRN;
	}
	public String getNumeroCNS() {
		return numeroCNS;
	}
	public void setNumeroCNS(String numeroCNS) {
		this.numeroCNS = numeroCNS;
	}
	public byte[] getIdentificadorBeneficiario() {
		return identificadorBeneficiario;
	}
	public void setIdentificadorBeneficiario(byte[] identificadorBeneficiario) {
		this.identificadorBeneficiario = identificadorBeneficiario;
	}
	public Guia getGuia() {
		return guia;
	}
	public void setGuia(Guia guia) {
		this.guia = guia;
	}
	
}

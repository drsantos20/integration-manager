package br.com.dccom.modelo;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import br.com.dccom.util.IndicadorAtendimento;

@Entity
@Table(name = "Beneficiario") 
public class Beneficiario {

	@Id
	@GeneratedValue
	@Column(name="beneficiario_id")
	private int id;
	
	@Column(name="nome")
	private String nome;
	private String cpf;
	private String email;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "beneficiario")
	private List<Telefone> telefone;
	
	private String nascimento;
	private String endereco;
	private String cidade;
	private String estado;
	private String cep;
	private String sexo;
	private String nacionalidade;
	
    protected String numeroCarteira;
    protected IndicadorAtendimento atendimentoRN;
    protected String numeroCNS;
    protected byte[] identificadorBeneficiario;
	
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
	public String getNacionalidade() {
		return nacionalidade;
	}
	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
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
	public IndicadorAtendimento getAtendimentoRN() {
		return atendimentoRN;
	}
	public void setAtendimentoRN(IndicadorAtendimento atendimentoRN) {
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
	
}

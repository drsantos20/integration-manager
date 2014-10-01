package br.com.dccom.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.dccom.modelo.Usuario;

public class UsuarioValidator implements Validator {

	@Override
	public boolean supports(Class<?> paramClass) {
		return Usuario.class.equals(paramClass);

	}

	@Override
	public void validate(Object obj, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "valid.email");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "senha", "valid.senha");
	}

}

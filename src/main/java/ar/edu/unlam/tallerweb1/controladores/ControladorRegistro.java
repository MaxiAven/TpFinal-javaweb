package ar.edu.unlam.tallerweb1.controladores;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioRegistro;

@Controller
public class ControladorRegistro {
	
	@Inject
	private ServicioRegistro servicioRegistro;
	
	@RequestMapping(path="registroUsuario", method=RequestMethod.GET)
	public ModelAndView registro(){
		
		return new ModelAndView("registroUsuario");
	}
	
	@RequestMapping(path="/registrar-Usuario", method=RequestMethod.POST)
	public ModelAndView registrarUsuario(@ModelAttribute("usuario") Usuario usuario, HttpServletRequest request){
	
		servicioRegistro.registrarUsuario(usuario);
		
		return  new ModelAndView("index");
	
} 
}
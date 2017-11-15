package ar.edu.unlam.tallerweb1.controladores;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Hospedaje;
import ar.edu.unlam.tallerweb1.servicios.ServicioHospedaje;
import ar.edu.unlam.tallerweb1.servicios.ServicioRuta;


@Controller
public class ControladorCargaHospedaje {
	
	@Inject
	private ServicioHospedaje servicioHospedaje;
	@Inject
	private ServicioRuta servicioRuta;
	
	
	@RequestMapping(path="/cargarHospedaje", method=RequestMethod.GET)
	public ModelAndView cargaHospedaje(){
		
	
		return new ModelAndView("cargarHospedaje");
	}
	
	@RequestMapping(path="/cargar-hospedaje", method=RequestMethod.POST)
	public ModelAndView cargarRuta(@ModelAttribute("hospedaje") Hospedaje hospedaje, HttpServletRequest request){
		/*
		Long idRuta = (Long) request.getSession().getAttribute("idRuta");
		Ruta miRuta = servicioRuta.consultarRutaPorId(idRuta);
		System.out.println("EL ID DE LA RUTA ES"+ idRuta);
		
		hospedaje.setRuta(miRuta);*/ //Aca intento guardar la foreingKey que viene de Ruta, no me sale pero es algo así.
		
		servicioHospedaje.agregarHospedaje(hospedaje);
		return new ModelAndView("misExperiencias"); //Vista lista destino + hospedaje!
	}

	@RequestMapping(path="/misExperiencias", method=RequestMethod.GET)
	public ModelAndView misExperiencias(){
		
	
		return new ModelAndView("misExperiencias");
	}
	
}

package ar.edu.unlam.tallerweb1.controladores;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import ar.edu.unlam.tallerweb1.modelo.Viaje;
import ar.edu.unlam.tallerweb1.servicios.ServicioViaje;
import ar.edu.unlam.tallerweb1.servicios.ServicioRuta;

@Controller
public class ControladorIndex {
	
	@Inject
	private ServicioRuta servicioRuta;
	
	@Inject
	private ServicioViaje servicioViaje;
	

	
	@RequestMapping(path="/", method=RequestMethod.GET)
	public ModelAndView inicio(){
		
		return new ModelAndView("index");
	}
	
	@RequestMapping(path="/listaResultado")
	public ModelAndView busquedaPorPrecioYDestino(@RequestParam("precio") float precio){
		
		ModelAndView mav = new ModelAndView("resultado");
		List<Viaje> listado = servicioRuta.buscarPorPrecioYDestino(precio);
		mav.addObject("lista", listado);
		return mav;
	}
	
	//Metodo para la carga de viajes 
	@RequestMapping(path="/cargarViaje", method=RequestMethod.GET)
	public ModelAndView cargaViaje(){
		ModelAndView mav = new ModelAndView("cargaViaje");
		mav.addObject("listaViaje", servicioViaje.listarTipoViaje());
		return mav;
	}
	
	@RequestMapping(path = "/cargar-viaje", method = RequestMethod.POST)
	public ModelAndView cargarViaje(@ModelAttribute("viaje") Viaje viaje, HttpServletRequest request) {
		
			servicioRuta.agregarViaje(viaje);
		
		
		return new ModelAndView("cargaViaje");
	}
	
	
	
}

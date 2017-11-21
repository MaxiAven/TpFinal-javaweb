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

import ar.edu.unlam.tallerweb1.modelo.Transporte;
import ar.edu.unlam.tallerweb1.modelo.Viaje;
import ar.edu.unlam.tallerweb1.servicios.ServicioViaje;
import ar.edu.unlam.tallerweb1.servicios.ServicioRuta;
import ar.edu.unlam.tallerweb1.servicios.ServicioTransporte;
@Controller
public class ControladorIndex {
	
	@Inject
	private ServicioRuta servicioRuta;
	
	@Inject
	private ServicioTransporte servicioTransporte;
	
	@Inject
	private ServicioViaje servicioViaje;
	

	
	@RequestMapping(path="/", method=RequestMethod.GET)
	public ModelAndView inicio(){
		
		return new ModelAndView("index");
	}
	
	@RequestMapping(path="/listaResultado")
	public ModelAndView busquedaPorPrecioYDestino(@RequestParam("lugar") String lugar ,@RequestParam("precio") float precio ){
		
		ModelAndView mav = new ModelAndView("resultado");
		List<Transporte> listado = servicioTransporte.buscarPorPrecioYDestino(precio,lugar);
		mav.addObject("lista", listado);
		return mav;
	}
	
	
	
	
}

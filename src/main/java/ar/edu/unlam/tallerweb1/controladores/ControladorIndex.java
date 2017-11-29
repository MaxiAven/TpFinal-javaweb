package ar.edu.unlam.tallerweb1.controladores;
import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Viaje;
import ar.edu.unlam.tallerweb1.servicios.ServicioViaje;
@Controller
public class ControladorIndex {
	
	@Inject
	private ServicioViaje servicioViaje;
	

	
	@RequestMapping(path="/", method=RequestMethod.GET)
	public ModelAndView inicio(){
		
		ModelAndView mav = new ModelAndView("index");
		List<Viaje> listado = servicioViaje.listarMayorCalificacion();

		mav.addObject("lista", listado);
		return mav;
		
		//return new ModelAndView("index");
	}
	
	@RequestMapping(path="/listaDestino")
	public ModelAndView busquedaPorDestino(@RequestParam("lugar") String lugar){
		
		ModelAndView mav = new ModelAndView("resultadoBusquedaDestino");
		List<Viaje> listado = servicioViaje.buscarPorDestino(lugar);
		mav.addObject("lista", listado);
		return mav;
	}
	
	@RequestMapping(path="/listaResultado")
	public ModelAndView busquedaPorPrecioYDestino(@RequestParam("lugar") String lugar ,@RequestParam("precio") float precio ){
		
		ModelAndView mav = new ModelAndView("resultadoBusqueda");
		List<Viaje> listado = servicioViaje.buscarPorPrecioYDestino(precio,lugar);
		mav.addObject("lista", listado);
		return mav;
	}
	
	
	
	
}

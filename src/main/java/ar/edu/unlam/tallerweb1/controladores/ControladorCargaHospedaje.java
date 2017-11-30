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
import ar.edu.unlam.tallerweb1.servicios.ServicioTransporte;



@Controller
public class ControladorCargaHospedaje {
	
	@Inject
	private ServicioHospedaje servicioHospedaje;
	@Inject
	private ServicioTransporte servicioTransporte;
	
	
	
	@RequestMapping(path="/cargarHospedaje", method=RequestMethod.GET)
	public ModelAndView cargaHospedaje(){
		
	
		return new ModelAndView("cargarHospedaje");
	}
	
	//metodo para guardar el hospedaje y este a su vez envía  la vista de viaje valores de precio hospedaje, 
	//cant dias y precio transporte para que muestre el total de lo gastado en el viaje
	@RequestMapping(path="/cargar-hospedaje", method=RequestMethod.POST)
	public ModelAndView cargarRuta(@ModelAttribute("hospedaje") Hospedaje hospedaje, HttpServletRequest request){
		
		servicioHospedaje.agregarHospedaje(hospedaje);
		ModelAndView mav = new ModelAndView("cargaViaje");
		mav.addObject("precioTotalTrans", servicioTransporte.consultarUltimoRegistroDeTransporte());
		mav.addObject("precioTotal", servicioHospedaje.consultarUltimoRegistroDeHospedaje());
		return mav;
		
		
	}

	
	
}

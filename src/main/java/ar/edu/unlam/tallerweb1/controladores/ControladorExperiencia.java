package ar.edu.unlam.tallerweb1.controladores;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Viaje;
import ar.edu.unlam.tallerweb1.servicios.ServicioViaje;

@Controller
public class ControladorExperiencia {
   @Inject
   private ServicioViaje servicioViaje;
   
   @RequestMapping(path="listaExperienciaDeViaje/id/{id}",  method=RequestMethod.GET)
   public ModelAndView listaExperiencia(@PathVariable("id") Long id ){
	   ModelAndView mav = new ModelAndView("listarExperienciaDeViaje");
		List<Viaje> listado = servicioViaje.mostrarExperienciaDeViaje(id);
		mav.addObject("lista", listado);
		return mav;
   }
 
}

package ar.edu.unlam.tallerweb1.controladores;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Hospedaje;

import ar.edu.unlam.tallerweb1.modelo.Transporte;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.modelo.Viaje;
import ar.edu.unlam.tallerweb1.servicios.ServicioHospedaje;
import ar.edu.unlam.tallerweb1.servicios.ServicioLogin;
import ar.edu.unlam.tallerweb1.servicios.ServicioTransporte;
import ar.edu.unlam.tallerweb1.servicios.ServicioViaje;

@Controller
public class ControladorLogin {

	@Inject
	private ServicioLogin servicioLogin;
	@Inject
	private ServicioViaje servicioViaje;
	@Inject
	private ServicioTransporte servicioTransporte;
	@Inject
	private ServicioHospedaje servicioHospedaje;

	@RequestMapping("/login")
	public ModelAndView irALogin() {

		ModelMap modelo = new ModelMap();
		Usuario usuario = new Usuario();
		modelo.put("usuario", usuario);
		
		return new ModelAndView("login", modelo);
	}

	@RequestMapping(path = "/validar-login", method = RequestMethod.POST)
	public ModelAndView validarLogin(@ModelAttribute("usuario") Usuario usuario, HttpServletRequest request) {
		ModelMap model = new ModelMap();

		Usuario usuarioBuscado = servicioLogin.consultarUsuario(usuario);
		if (usuarioBuscado != null) {
			request.getSession().setAttribute("nombre", usuarioBuscado.getNombre());
			request.getSession().setAttribute("id", usuarioBuscado.getIdUsuario());
			
			return new ModelAndView("redirect:/misViajes");
		} else {
			
			model.put("error", "Usuario o clave incorrecta");
		}
		return new ModelAndView("login", model);
	}

	@RequestMapping(path = "/panel", method = RequestMethod.GET)
	public ModelAndView irAPanel() {
		return new ModelAndView("redirect:/misViajes");
	}
	
	@RequestMapping(path = "/todosLosViajes", method = RequestMethod.GET)
	public ModelAndView irATodosLosViajes() {
		ModelAndView mav = new ModelAndView("todosLosViajes");
		mav.addObject("listarViajes", servicioViaje.listarTodosLosViajes());
		return mav;
	}
	
	@RequestMapping(path = "/misViajes")
	public ModelAndView irAMisViajes(HttpServletRequest request) {

		
		ModelMap modelo = new ModelMap();
		Long id = (Long) request.getSession().getAttribute("id"); 
		List<Viaje> listaViaje= servicioViaje.listaMisViajes(id);
		
		modelo.put("viaje", listaViaje);
		return new ModelAndView ("misViajes", modelo);
		
		
	}
	

	@RequestMapping(path = "verDetalles")
	public ModelAndView verDetalles(@ModelAttribute ("viaje") Viaje viaje, HttpServletRequest request) {

		
		ModelMap modelo = new ModelMap(); 
		Long viajeId = viaje.getIdViaje();
		String viajeNombre = viaje.getNombre();

		List<Transporte> listaTransporte = servicioTransporte.listarTransporteEspecifico(viajeId);
		List<Hospedaje> listaHospedaje = servicioHospedaje.listarHospedajeEspecifico(viajeId);
		
		modelo.put("transporte", listaTransporte);
		modelo.put("hospedaje", listaHospedaje);
		modelo.put("viajeNombre", viajeNombre);
	
		return new ModelAndView ("panelDetalle", modelo);
	}
	
	
	

	
	/*@RequestMapping(path="/verHistoria")
	public ModelAndView busquedaPorPrecioYDestino(@RequestParam("id") Long id ){
		
		ModelAndView mav = new ModelAndView("historiaDeUsuario");
		List<Viaje> listado = servicioViaje.buscarPorPrecioYDestino(precio,lugar);
		mav.addObject("lista", listado);
		return mav;
	}*/

	@RequestMapping(path = "/home", method = RequestMethod.GET)
	public ModelAndView irAHome() {
		return new ModelAndView("home");
	}
	

	//Metodo para la carga del traslado 
	@RequestMapping(path="/cargarTransporte", method=RequestMethod.GET)
	public ModelAndView cargaViaje(){
		ModelAndView mav = new ModelAndView("cargaTransporte");
		mav.addObject("listaViaje", servicioViaje.listarTipoViaje());
		return mav;
	}
	
	@RequestMapping(path = "/cargar-transporte", method = RequestMethod.POST)
	public ModelAndView cargarTransporte(@ModelAttribute("transporte") Transporte transporte, HttpServletRequest request) {
		
			servicioTransporte.agregarTransporte(transporte);
		
		
		return new ModelAndView("cargarHospedaje");
	}
	
	//meotdo para mostrar vista de cargade viaje
	@RequestMapping(path="/cargarViaje" ,method = RequestMethod.GET)
	public ModelAndView cargaViaje(HttpServletRequest request) {
		
	return new ModelAndView("cargaViaje");
}
	
	@RequestMapping(path="/cargar-viaje", method = RequestMethod.POST)
	public ModelAndView cargarViaje(@ModelAttribute("viaje") Viaje viaje, HttpServletRequest request)
	{
		//El id usuario ya lo guarda desde que se loguea en validar-login y se lo llama como "nombre" y "id"
		Long id = (Long) request.getSession().getAttribute("id"); 
 		Usuario miUsuario = servicioLogin.consultarUsuarioPorId(id); //Busco por criteria
 		viaje.setUsuario(miUsuario); //Le seteo el id a viaje
 		//System.out.println("el id de usuario es"+ miUsuario.getIdUsuario()); //PRUEBA DE QUE ME TRAIGA EL ID
 		 
 		//obtengo el ultimo id de transporte cargado y lo inserto en la tabla viaje
 		Transporte miTransporte = servicioTransporte.consultarUltimoRegistroDeTransporte();
 		viaje.setTransporte(miTransporte);
 		
 		//obtengo el ultimo id de hospedaje cargado y lo inserto en la tabla viaje
 		Hospedaje miHospedaje = servicioHospedaje.consultarUltimoRegistroDeHospedaje();
 		viaje.setHospedaje(miHospedaje);
 		
		servicioViaje.agregarViaje(viaje);
		return new ModelAndView("redirect:/misViajes");
	}
	
	@RequestMapping(path = "/logout")
	public ModelAndView logout(HttpServletRequest request) {
			request.getSession().invalidate();
		return new ModelAndView("redirect:/");
	}

	public void setServicioLogin(ServicioLogin servicioLogin) {
		this.servicioLogin = servicioLogin;
	}
}

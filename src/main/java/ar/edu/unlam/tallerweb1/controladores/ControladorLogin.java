package ar.edu.unlam.tallerweb1.controladores;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Transporte;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.modelo.Viaje;
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
			return new ModelAndView("panel");
		} else {
			
			model.put("error", "Usuario o clave incorrecta");
		}
		return new ModelAndView("login", model);
	}

	

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
		servicioViaje.agregarViaje(viaje);
		return new ModelAndView("cargaViaje");
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

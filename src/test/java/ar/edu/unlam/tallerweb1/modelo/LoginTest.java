package ar.edu.unlam.tallerweb1.modelo;
import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.Test;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.web.servlet.ModelAndView;


import ar.edu.unlam.tallerweb1.controladores.ControladorLogin;
import ar.edu.unlam.tallerweb1.servicios.ServicioLogin;
import ar.edu.unlam.tallerweb1.servicios.ServicioViaje;

import static org.assertj.core.api.Assertions.assertThat;

public class LoginTest {
	
	@Test
	public void loginIncorrectoDeberiaLlevaraLogin(){
		
		ControladorLogin controladorLogin = new ControladorLogin();
		Usuario usuarioMock = mock(Usuario.class);
		HttpServletRequest request = mock(HttpServletRequest.class);
		ServicioLogin servicioMock = mock(ServicioLogin.class);
		controladorLogin.setServicioLogin(servicioMock);
		
		ModelAndView mav = controladorLogin.validarLogin(usuarioMock, request);
		assertThat(mav.getViewName()).isEqualTo("login");
		assertThat(mav.getModel().get("error")).isEqualTo("Usuario o clave incorrecta");
	}
	
	@Test
	public void loginCorrectoDeberiaLlevaraPanel(){
		
		ControladorLogin controladorLogin = new ControladorLogin();
		Usuario usuarioMock = mock(Usuario.class);
		HttpSession sessionMock = mock(HttpSession.class);
		HttpServletRequest request = mock(HttpServletRequest.class);
		ServicioLogin servicioMock = mock(ServicioLogin.class);
		controladorLogin.setServicioLogin(servicioMock);
		
		List<Usuario> mockedLista = new ArrayList<>();
		mockedLista.add(usuarioMock);
		
		when(servicioMock.consultarUsuario(usuarioMock)).thenReturn(usuarioMock);
		when(request.getSession()).thenReturn(sessionMock);
		
		
		ModelAndView mav = controladorLogin.validarLogin(usuarioMock, request);
		assertThat(mav.getViewName()).isEqualTo("redirect:/misViajes");
		
		
	}
	
	//test para validar la correcta carga de un viaje
	@Test
	public void crearCargaViajes(){
		
	
		ServicioViaje servicioViajeMock = mock(ServicioViaje.class);
		List<Viaje> listarViajes = servicioViajeMock.listarTodosLosViajes();
		assertThat(listarViajes).isNotNull();
	}
	
	

}

package ar.edu.unlam.tallerweb1.modelo;

import javax.servlet.http.HttpServletRequest;

import java.util.List;
import java.util.ArrayList;
import org.junit.Test;
import static org.assertj.core.api.Assertions.assertThat;


import static org.mockito.Mockito.*;

import ar.edu.unlam.tallerweb1.SpringTest;
import ar.edu.unlam.tallerweb1.controladores.ControladorIndex;
import ar.edu.unlam.tallerweb1.servicios.ServicioLogin;
import ar.edu.unlam.tallerweb1.servicios.ServicioViaje;

public class BusquedaTest  extends SpringTest{
	 @Test
	 public void busquedaSoloPorPrecio(){
	  
	  ControladorIndex controladorIndex = new ControladorIndex();
	  HttpServletRequest request = mock(HttpServletRequest.class);
	  ServicioViaje servicioViajeMock = mock(ServicioViaje.class);
	  controladorIndex.setServicioViaje(servicioViajeMock);
	  
	  
	  float precio=501;
	   String lugar="mendoza";
	  
	  Viaje viaje1=new Viaje();
	  viaje1.setPrecio(500);
	  //getSession().save(viaje1);
	  
	  Transporte transporte1=new Transporte();
	  transporte1.setLugar("mendoza");
	  //getSession().save(transporte1);
	  
	  viaje1.setTransporte(transporte1);
	 
	  
	  //servicioViajeMock.buscarPorPrecioYDestino(precio, lugar);
	 
	  List<Viaje> listaResultado=servicioViajeMock.buscarPorPrecioYDestino(precio, lugar);
	  assertThat(listaResultado).isNotNull();
	    
	 }

	}
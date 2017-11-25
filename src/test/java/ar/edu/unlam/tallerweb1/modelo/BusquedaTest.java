package ar.edu.unlam.tallerweb1.modelo;

import org.junit.Test;

public class BusquedaTest {
	@Test
	public void busquedaSoloPorPrecio(){
		Viaje viaje1=new Viaje();
		viaje1.setCalificacion(4);
		viaje1.setNombre("Mardel magico");
		viaje1.setPrecio(500);
		
		
	}

}
//Farmacia farmacia1= new Farmacia();
//farmacia1.setNombre("Ted");
//farmacia1.setTelefono("47534288");
//farmacia1.setDiaDeTurno("martes");
//getSession().save(farmacia1);
//
//Direccion direccion1=new Direccion();
//direccion1.setCalle("riobamba");
//direccion1.setNumero("659");
//getSession().save(direccion1);
//
//farmacia1.setDireccion(direccion1);
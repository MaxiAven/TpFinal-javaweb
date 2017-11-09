package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Hospedaje;
import ar.edu.unlam.tallerweb1.modelo.Ruta;
import ar.edu.unlam.tallerweb1.modelo.Viaje;


public interface ServicioRuta {
	
	public void agregarViaje(Viaje viaje);
	Ruta consultarRutaPorId(Long id);
	public List<Viaje> buscarPorPrecioYDestino(float precio);

}

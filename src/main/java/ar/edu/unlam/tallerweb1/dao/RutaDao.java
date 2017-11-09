package ar.edu.unlam.tallerweb1.dao;

import java.util.List;


import ar.edu.unlam.tallerweb1.modelo.Ruta;
import ar.edu.unlam.tallerweb1.modelo.Viaje;

public interface RutaDao {
	
	public void agregarViaje(Viaje viaje);
	
	public List<Viaje> buscarPorPrecioYDestino(float precio);
	
	Ruta consultarRutaPorId(Long id);

}

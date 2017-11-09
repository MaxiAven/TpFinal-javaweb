package ar.edu.unlam.tallerweb1.servicios;



import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Hospedaje;
import ar.edu.unlam.tallerweb1.modelo.Viaje;


public interface ServicioViaje {
	
	public void agregarViaje(Viaje viaje);
	public List<Viaje> listarTipoViaje();

}

package ar.edu.unlam.tallerweb1.servicios;



import java.util.List;


import ar.edu.unlam.tallerweb1.modelo.Viaje;


public interface ServicioViaje {
	
	public void agregarViaje(Viaje viaje);
	public List<Viaje> listarTipoViaje();
	public List<Viaje> buscarPorPrecioYDestino(float precio, String lugar);
	public List<Viaje> listarTodosLosViajes();
	public List<Viaje> listaMisViajes(Long id);
	public List<Viaje> mostrarExperienciaDeViaje(Long id);
	public List<Viaje> buscarPorDestino(String lugar);
	public List<Viaje> listarMayorCalificacion();
	Viaje consultarViajePorId(Long id);
	void eliminarViaje(Viaje viaje1);

	
}
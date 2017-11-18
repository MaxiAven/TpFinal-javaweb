package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.RutaDao;



import ar.edu.unlam.tallerweb1.modelo.Ruta;
import ar.edu.unlam.tallerweb1.modelo.Transporte;
import ar.edu.unlam.tallerweb1.modelo.Viaje;

@Service("servicioRuta")
@Transactional
public class ServicioRutaImpl implements ServicioRuta{
	

	@Inject
	private RutaDao servicioRutaDao;

	@Override
	public void agregarViaje(Viaje viaje) {
		
		servicioRutaDao.agregarViaje(viaje);
	}
	
	@Override
	public List<Viaje> buscarPorPrecioYDestino(float precio, String lugar) {
		
		return servicioRutaDao.buscarPorPrecioYDestino(precio, lugar);
	}
	
	@Override
	public Ruta consultarRutaPorId(Long id) {
		
		return servicioRutaDao.consultarRutaPorId(id);
	}

	@Override
	public void agregarViaje(Transporte transporte) {
		// TODO Auto-generated method stub
		
	}
	
}

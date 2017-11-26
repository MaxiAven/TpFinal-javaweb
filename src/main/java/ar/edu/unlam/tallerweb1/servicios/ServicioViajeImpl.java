package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.UsuarioDao;
import ar.edu.unlam.tallerweb1.dao.ViajeDao;
import ar.edu.unlam.tallerweb1.modelo.Viaje;


@Service("servicioViaje")
@Transactional
public class ServicioViajeImpl implements ServicioViaje{
	

	
	@Inject
	private ViajeDao servicioViajeDao;
	
	@Inject
	private UsuarioDao servicioUsuarioDao;
	

	@Override
	public void agregarViaje(Viaje viaje) {
		
		servicioViajeDao.agregarViaje(viaje);
	}
	
	@Override
	public List<Viaje> listarTipoViaje() {
		
		return servicioViajeDao.listarTipoViaje();
	}
	@Override
	public List<Viaje> buscarPorPrecioYDestino(float precio, String lugar) {
		
		return servicioViajeDao.buscarPorPrecioYDestino(precio, lugar);
	}
	
	@Override
	public List<Viaje> listarTodosLosViajes() {
		
		return servicioViajeDao.listarTodosLosViajes();
	}

	
}

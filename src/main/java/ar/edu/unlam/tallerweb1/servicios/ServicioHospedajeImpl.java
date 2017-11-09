package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.HospedajeDao;

import ar.edu.unlam.tallerweb1.modelo.Hospedaje;


@Service("servicioHospedaje")
@Transactional
public class ServicioHospedajeImpl implements ServicioHospedaje{

	@Inject
	private HospedajeDao servicioHospedajeDao;

	@Override
	public void agregarHospedaje(Hospedaje hospedaje) {
		
		servicioHospedajeDao.agregarHospedaje(hospedaje);
	}
	
	@Override
	public List<Hospedaje> listarTipoHospedaje() {
		
		return servicioHospedajeDao.listarTipoHospedaje();
	}
}

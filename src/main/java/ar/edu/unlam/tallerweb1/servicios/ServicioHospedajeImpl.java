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
	
	@Override
	public Hospedaje consultarUltimoRegistroDeHospedaje() {
		
		return servicioHospedajeDao.consultarUltimoRegistroDeHospedaje();
	}

	@Override

	public List<Hospedaje> listarHospedajeEspecifico(Long id){
			
			return servicioHospedajeDao.listarHospedajeEspecifico(id);
		}

	@Override
	public Hospedaje consultarHospedajePorId(Long id) {
		
		return servicioHospedajeDao.consultarHospedajePorId(id);
	}
	
	@Override
	public void eliminarHospedaje(Hospedaje hospedaje) {
		// TODO Auto-generated method stub
		 servicioHospedajeDao.eliminarHospedaje(hospedaje);

	}
	
}

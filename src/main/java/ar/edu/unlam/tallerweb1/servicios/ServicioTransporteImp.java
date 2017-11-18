package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.TransporteDao;




import ar.edu.unlam.tallerweb1.modelo.Transporte;


@Service("servicioTransporte")
@Transactional
public class ServicioTransporteImp implements ServicioTransporte{
	

	@Inject
	private TransporteDao servicioTransporteDao;

	@Override
	public void agregarTransporte(Transporte transporte) {
		
		servicioTransporteDao.agregarTransporte(transporte);
	}
	
	public TransporteDao getServicioTransporteDao() {
		return servicioTransporteDao;
	}

	public void setServicioTransporteDao(TransporteDao servicioTransporteDao) {
		this.servicioTransporteDao = servicioTransporteDao;
	}

	@Override
	public List<Transporte> buscarPorPrecioYDestino(float precio, String lugar) {
		
		return servicioTransporteDao.buscarPorPrecioYDestino(precio, lugar);
	}
	
	@Override
	public Transporte consultarTransportePorId(Long id) {
		
		return servicioTransporteDao.consultarTransportePorId(id);
	}
	
	@Override
	public List<Transporte> listarTipoTransporte(){
		
		return servicioTransporteDao.listarTipoTransporte();
	}
	
}
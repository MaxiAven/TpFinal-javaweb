package ar.edu.unlam.tallerweb1.servicios;


import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.dao.UsuarioDao;

@Service("registrarUsuario")
@Transactional
public class ServicioRegistroImp implements ServicioRegistro {
	@Inject
	private UsuarioDao servicioUsuarioDao;
     	
	
	public UsuarioDao getServicioUsuarioDao() {
		return servicioUsuarioDao;
	}

	public void setServicioUsuarioDao(UsuarioDao servicioUsuarioDao) {
		this.servicioUsuarioDao = servicioUsuarioDao;
	}

	@Override
	public void registrarUsuario(Usuario usuario) {
		servicioUsuarioDao.registrarUsuario(usuario);
	}
	

}

package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Viaje;


@Repository("viajeDao")
public class ViajeDaoImpl implements ViajeDao{
	@Inject
    private SessionFactory sessionFactory;

	@Override
	public void agregarViaje(Viaje viaje) {
		sessionFactory.getCurrentSession().save(viaje);
		
		
	}

	@SuppressWarnings("unchecked")
	@Override
	/*public List<Viaje> listarTipoViaje() {
		final Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(Viaje.class).list();
	}*/
	
	public List<Viaje> listarTipoViaje(){
		final Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(Viaje.class).list();
	}


}

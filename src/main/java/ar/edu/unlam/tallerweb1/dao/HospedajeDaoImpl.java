package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Hospedaje;


@Repository("hospedajeDao")
public class HospedajeDaoImpl implements HospedajeDao{
	@Inject
    private SessionFactory sessionFactory;

	@Override
	public void agregarHospedaje(Hospedaje hospedaje) {
		sessionFactory.getCurrentSession().save(hospedaje);
		
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Hospedaje> listarTipoHospedaje() {
		final Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(Hospedaje.class).list();
	}
	
	


}

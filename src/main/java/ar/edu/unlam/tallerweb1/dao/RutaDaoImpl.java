package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;


import ar.edu.unlam.tallerweb1.modelo.Ruta;
import ar.edu.unlam.tallerweb1.modelo.Viaje;

@Repository("rutaDao")
public class RutaDaoImpl implements RutaDao{
	@Inject
    private SessionFactory sessionFactory;

	@Override
	public void agregarViaje(Viaje viaje) {
		//final Session session = sessionFactory.getCurrentSession();
		//session.persist(r);
		sessionFactory.getCurrentSession().save(viaje);
		
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Viaje> buscarPorPrecioYDestino(float precio, String lugar) {
//		return null;
		final Session session = sessionFactory.getCurrentSession();
//		return session.createCriteria(Viaje.class).add(Restrictions.le("precio", precio)).list();
		Criterion precio1 = Restrictions.le("precio",precio);
		Criterion lugar1 = Restrictions.like("lugar",lugar);
		LogicalExpression orExp = Restrictions.or(precio1,lugar1);
		return session.createCriteria(Viaje.class).add(orExp).list();
		
//		crit.add(orExp);
//		List results = crit.list(); 
	}
	
	@Override
	public Ruta consultarRutaPorId(Long id) {
		final Session sesion = sessionFactory.getCurrentSession();
		//System.out.println("el id en dao es"+ id); // Aca intento guardar el Id de Ruta para la foreingKey de Hospedaje. No sale todavía
		return (Ruta) sesion.createCriteria(Ruta.class)
				.add(Restrictions.eq("id", id))
				.uniqueResult();
	}

}

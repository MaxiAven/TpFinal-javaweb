package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
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
	
	@Override
	public Hospedaje consultarUltimoRegistroDeHospedaje() {
		final Session session = sessionFactory.getCurrentSession();
		return (Hospedaje)session.createCriteria(Hospedaje.class)
					   .addOrder(Order.desc("idHospedaje")).setMaxResults(1).uniqueResult();
	}
	
	@Override
	public Hospedaje consultarHospedajePorId(Long id) {
		final Session sesion = sessionFactory.getCurrentSession();
		//System.out.println("el id en dao es"+ id); // Aca intento guardar el Id de Transporte para la foreingKey de Hospedaje. No sale todavía
		return (Hospedaje) sesion.createCriteria(Hospedaje.class)
				.add(Restrictions.eq("id", id))
				.uniqueResult();
	}
	

	@Override
	public List<Hospedaje> listarHospedajeEspecifico(Long id){
		
		final Session sesion =  sessionFactory.getCurrentSession();
		
		return (List<Hospedaje>) sesion.createCriteria(Hospedaje.class)
				.add(Restrictions.eq("id",id)).list();
	}
	
	@Override
	public void eliminarHospedaje(Hospedaje hospedaje) {
		final Session sesion = sessionFactory.getCurrentSession();
	
		Hospedaje miHospedaje = (Hospedaje) sesion.createCriteria(Hospedaje.class)
		             .add(Restrictions.eq("id", hospedaje.getIdHospedaje())).uniqueResult();
		sesion.delete( miHospedaje);

			
	}

}

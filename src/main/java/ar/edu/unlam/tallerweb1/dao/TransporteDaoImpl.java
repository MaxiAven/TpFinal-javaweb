package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;


import ar.edu.unlam.tallerweb1.modelo.Transporte;

@Repository("transporteDao")
public class TransporteDaoImpl implements TransporteDao{
	@Inject
    private SessionFactory sessionFactory;

	@Override
	public void agregarTransporte(Transporte transporte) {
		//final Session session = sessionFactory.getCurrentSession();
		//session.persist(r);
		sessionFactory.getCurrentSession().save(transporte);
		
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Transporte> buscarPorPrecioYDestino(float precio, String lugar) {
//		return null;
		final Session session = sessionFactory.getCurrentSession();
//		return session.createCriteria(Transporte.class).add(Restrictions.le("precio", precio)).list();
		Criterion precio1 = Restrictions.le("precio",precio);
		Criterion lugar1 = Restrictions.eq("lugar",lugar);
		
		LogicalExpression andExp = Restrictions.and(precio1,lugar1);
		LogicalExpression orExp = Restrictions.or(precio1,lugar1);
	
		
		if(precio!=10000){
		      if(!lugar.equals("")){
		    	  
		    	  return session.createCriteria(Transporte.class).add(Restrictions.le("precio", precio)).list();
		      }else{
		    	  System.out.println("hola");
		    	  return session.createCriteria(Transporte.class).add(andExp).list();
		      }
		}else{ 
			if(!lugar.equals("")){
				  return session.createCriteria(Transporte.class).add(Restrictions.eq("lugar", lugar)).list(); 
			}else{
				
				return session.createCriteria(Transporte.class).add(orExp).list();
			}
			
			}
//		crit.add(orExp);
//		List results = crit.list(); 
	}
	
	@Override
	public Transporte consultarTransportePorId(Long id) {
		final Session sesion = sessionFactory.getCurrentSession();
		//System.out.println("el id en dao es"+ id); // Aca intento guardar el Id de Transporte para la foreingKey de Hospedaje. No sale todavía
		return (Transporte) sesion.createCriteria(Transporte.class)
				.add(Restrictions.eq("id", id))
				.uniqueResult();
	}

	public List<Transporte> listarTipoTransporte(){
		final Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(Transporte.class).list();
	}

}

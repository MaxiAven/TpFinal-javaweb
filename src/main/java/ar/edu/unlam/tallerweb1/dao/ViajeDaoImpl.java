package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
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
	public List<Viaje> listarTipoViaje(){
		final Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(Viaje.class).list();
		
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Viaje> buscarPorPrecioYDestino(float precio, String lugar) {
		final Session session = sessionFactory.getCurrentSession();
		Criteria Busqueda =session.createCriteria(Viaje.class); // creo criteria Busqueda 
		
		if(precio==0){// filtra por el campo prcio del modelo campo 
			if(lugar.equals("")){// filtra por el campo lugar del modelo transporte
			 // si no se le pasa nada en precio, ni lugar lista todo	
			}else{ // si no se le pasa precio y si lugar(tipo de destino) lista todo lo que coincida con ese destino
				Busqueda.createAlias("transporte", "trans")
				.add(Restrictions.eq("trans.lugar",lugar));
			} 
		}else{
			if(lugar.equals("")){// si se le pasa un precio y no un tipo de destino lista todos los que sean < o = a ese importe, sin importar destino
				Busqueda.add(Restrictions.le("precio",precio));
			}else{// si se le pasa precio y tipo de destino filtra por ambos campos
				Busqueda.add(Restrictions.le("precio",precio))
				.createAlias("transporte", "trans")
				.add(Restrictions.eq("trans.lugar",lugar));
			}
			
		}
		


		return  Busqueda.list(); // devuelve el criteria con los filtros hechos en la validacion
		
	}

	@Override
	public List<Viaje> listarTodosLosViajes() {
		final Session sesion =  sessionFactory.getCurrentSession();
		return sesion.createCriteria(Viaje.class).list();
	}


	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Viaje>  mostrarExperienciaDeViaje(Long id) {
		final Session session =  sessionFactory.getCurrentSession();
	//	return  sesion.createCriteria(Viaje.class).list();
		Criteria Busqueda =session.createCriteria(Viaje.class);
		Busqueda.add(Restrictions.eq("idViaje",id));
		return Busqueda.list();
	}

	


	


}


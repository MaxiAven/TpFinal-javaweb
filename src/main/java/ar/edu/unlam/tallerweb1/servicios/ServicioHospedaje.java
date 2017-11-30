package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Hospedaje;


public interface ServicioHospedaje {
		public void agregarHospedaje(Hospedaje hospedaje);
		public List<Hospedaje> listarTipoHospedaje();
		public Hospedaje consultarUltimoRegistroDeHospedaje();
		public List<Hospedaje> listarHospedajeEspecifico(Long id);
		public Hospedaje consultarHospedajePorId(Long id);
		void eliminarHospedaje(Hospedaje hospedaje);
}

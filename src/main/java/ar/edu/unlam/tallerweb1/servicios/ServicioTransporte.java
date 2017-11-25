package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Transporte;


public interface ServicioTransporte {
	
	public void agregarTransporte(Transporte transporte);
<<<<<<< HEAD
	public Transporte consultarTransportePorId(Long id);
	public List<Transporte> buscarPorPrecioYDestino(float precio, String lugar);
=======
	Transporte consultarTransportePorId(Long id);
//	public List<Transporte> buscarPorPrecioYDestino(float precio, String lugar);
>>>>>>> master
	public List<Transporte> listarTipoTransporte();
	public Transporte consultarUltimoRegistroDeTransporte();

}

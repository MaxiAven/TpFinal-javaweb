package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Transporte;


public interface ServicioTransporte {
	
	public void agregarTransporte(Transporte transporte);
	public Transporte consultarTransportePorId(Long id);
	public List<Transporte> buscarPorPrecioYDestino(float precio, String lugar);
	public List<Transporte> listarTipoTransporte();
	public Transporte consultarUltimoRegistroDeTransporte();

}

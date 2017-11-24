package ar.edu.unlam.tallerweb1.dao;



import java.util.List;



import ar.edu.unlam.tallerweb1.modelo.Transporte;

public interface TransporteDao {
	
	public void agregarTransporte(Transporte transporte);
	
	//public List<Viaje> buscarPorPrecioYDestino(float precio, String lugar);
	
	Transporte consultarTransportePorId(Long id);

	//public List<Transporte> buscarPorPrecioYDestino(float precio, String lugar);

	public List<Transporte> listarTipoTransporte();

}


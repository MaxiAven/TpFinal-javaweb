package ar.edu.unlam.tallerweb1.modelo;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Ruta {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idRuta;
	private String salida;
	private String llegada;
	private Long gasto;
	
	@OneToMany
	private List<Destino> destino;
	
	@OneToMany
	private List<Hospedaje> hospedaje;
	
	
	public List<Destino> getDestino() {
		return destino;
	}
	public void setDestino(List<Destino> destino) {
		this.destino = destino;
	}
	public List<Hospedaje> getHospedaje() {
		return hospedaje;
	}
	public void setHospedaje(List<Hospedaje> hospedaje) {
		this.hospedaje = hospedaje;
	}
	public Long getIdRuta() {
		return idRuta;
	}
	public void setIdRuta(Long idRuta) {
		this.idRuta = idRuta;
	}
	public String getSalida() {
		return salida;
	}
	public void setSalida(String salida) {
		this.salida = salida;
	}
	public String getLlegada() {
		return llegada;
	}
	public void setLlegada(String llegada) {
		this.llegada = llegada;
	}
	public Long getGasto() {
		return gasto;
	}
	public void setGasto(Long gasto) {
		this.gasto = gasto;
	}

}

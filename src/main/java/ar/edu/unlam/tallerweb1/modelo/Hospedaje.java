package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Hospedaje {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idHospedaje;
	private String descripcion;
	private String tipoHospedaje;
	private float precio;
	private int cantPersonas;

	
	@ManyToOne
	@JoinColumn(name="idRuta")
	private Ruta ruta;
	
	public Ruta getRuta() {
		return ruta;
	}
	public void setRuta(Ruta ruta) {
		this.ruta = ruta;
	}
	public Long getIdHospedaje() {
		return idHospedaje;
	}
	public void setIdHospedaje(Long idHospedaje) {
		this.idHospedaje = idHospedaje;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public float getPrecio() {
		return precio;
	}
	public void setPrecio(float precio) {
		this.precio = precio;
	}
	
	public String getTipoHospedaje() {
		return tipoHospedaje;
	}
	public void setTipoHospedaje(String tipoHospedaje) {
		this.tipoHospedaje = tipoHospedaje;
	}
	public int getCantPersonas() {
		return cantPersonas;
	}
	public void setCantPersonas(int cantPersonas) {
		this.cantPersonas = cantPersonas;
	}
	

}

package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Viaje {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idViaje;
	private String salida;
	private String llegada;
	private String tipoDestino;
	private int cantidadDias;
	private int cantidadPersonas;
	private int calificacion;
	private float precio;
    private String descripcion;
    private String tieneHospedaje;
    
   
	@OneToOne
    private Hospedaje hospedaje;
    
	public Long getIdViaje() {
		return idViaje;
	}
	public void setIdViaje(Long idViaje) {
		this.idViaje = idViaje;
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

	public String getTipoDestino() {
		return tipoDestino;
	}
	public void setTipoDestino(String tipoDestino) {
		this.tipoDestino = tipoDestino;
	}
	public void setPrecio(float precio) {
		this.precio = precio;
	}
	

	public int getCantidadDias() {
		return cantidadDias;
	}
	public void setCantidadDias(int cantidadDias) {
		this.cantidadDias = cantidadDias;
	}
	public int getCantidadPersonas() {
		return cantidadPersonas;
	}
	public void setCantidadPersonas(int cantidadPersonas) {
		this.cantidadPersonas = cantidadPersonas;
	}
	public float getPrecio() {
		return precio;
	}
	public void setPrecio(int precio) {
		this.precio = precio;
	}
	
	 
    public int getCalificacion() {
		return calificacion;
	}
	public void setCalificacion(int calificacion) {
		this.calificacion = calificacion;
	}
    
	
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Hospedaje getHospedaje() {
		return hospedaje;
	}
	public void setHospedaje(Hospedaje hospedaje) {
		this.hospedaje = hospedaje;
	}
	public String getTieneHospedaje() {
		return tieneHospedaje;
	}
	public void setTieneHospedaje(String tieneHospedaje) {
		this.tieneHospedaje = tieneHospedaje;
	}
    
}

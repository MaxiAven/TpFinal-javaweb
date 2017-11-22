package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Viaje {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idViaje;
	private String nombre;
	private String img1;
	private String img2;
	private String img3;
	private String sug1;
	private String sug2;
	private String sug3;
	private int calificacion;
	
	
	@ManyToOne
	  @JoinColumn(name="idHospedaje")
	  private Hospedaje hospedaje;
	 
	 @ManyToOne
	  @JoinColumn(name="idTransporte")
	  private Transporte transporte;
	 
	 @ManyToOne
	  @JoinColumn(name="idUsuario")
	  private Usuario usuario;
	
	public Hospedaje getHospedaje() {
		return hospedaje;
	}
	public void setHospedaje(Hospedaje hospedaje) {
		this.hospedaje = hospedaje;
	}
	public Transporte getTransporte() {
		return transporte;
	}
	public void setTransporte(Transporte transporte) {
		this.transporte = transporte;
	}
	public Long getIdViaje() {
		return idViaje;
	}
	public void setIdViaje(Long idViaje) {
		this.idViaje = idViaje;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	 public String getSug3() {
			return sug3;
		}
		public void setSug3(String sug3) {
			this.sug3 = sug3;
		}
		public String getSug1() {
			return sug1;
		}
		public void setSug1(String sug1) {
			this.sug1 = sug1;
		}
		public String getSug2() {
			return sug2;
		}
		public void setSug2(String sug2) {
			this.sug2 = sug2;
		}
		
		public int getCalificacion() {
			return calificacion;
		}
		public void setCalificacion(int calificacion) {
			this.calificacion = calificacion;
		}
	

}

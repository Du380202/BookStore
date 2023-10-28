package web.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CauHoi")
public class CauHoi {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IDCauHoi")
	private Integer idCauHoi;
	@Column(name = "stt")
	private Integer stt;
	@Column(name = "cauhoi")
	private String cauHoi;
	public Integer getIdCauHoi() {
		return idCauHoi;
	}
	public void setIdCauHoi(Integer idCauHoi) {
		this.idCauHoi = idCauHoi;
	}
	public Integer getStt() {
		return stt;
	}
	public void setStt(Integer stt) {
		this.stt = stt;
	}
	public String getCauHoi() {
		return cauHoi;
	}
	public void setCauHoi(String cauHoi) {
		this.cauHoi = cauHoi;
	}
	
	
}

package web.Entity;

import javax.persistence.Entity;
import javax.persistence.*;

@Entity
@Table(name = "CauTraLoi")
public class CauTraLoi {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IDCauTraLoi")
	private Integer idCauTraLoi;
	@Column(name = "IDCauHoi")
	private Integer idCauHoi;
	@Column(name = "CauTraLoi")
	private String cauTraLoi;
	public Integer getIdCauTraLoi() {
		return idCauTraLoi;
	}
	public void setIdCauTraLoi(Integer idCauTraLoi) {
		this.idCauTraLoi = idCauTraLoi;
	}
	public Integer getIdCauHoi() {
		return idCauHoi;
	}
	public void setIdCauHoi(Integer idCauHoi) {
		this.idCauHoi = idCauHoi;
	}
	public String getCauTraLoi() {
		return cauTraLoi;
	}
	public void setCauTraLoi(String cauTraLoi) {
		this.cauTraLoi = cauTraLoi;
	}
	
	
	
	

}

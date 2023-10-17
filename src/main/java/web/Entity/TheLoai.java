package web.Entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TheLoai")
public class TheLoai {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IDTheLoai")
	private String idTheLoai;
	@Column(name = "TenTheLoai")
	private String tenTheLoai;
	public String getIdTheLoai() {
		return idTheLoai;
	}
	public void setIdTheLoai(String idTheLoai) {
		this.idTheLoai = idTheLoai;
	}
	public String getTenTheLoai() {
		return tenTheLoai;
	}
	public void setTenTheLoai(String tenTheLoai) {
		this.tenTheLoai = tenTheLoai;
	}
	
	

}

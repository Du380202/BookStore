package web.Entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NhaXuatBan")
public class NhaXuatBan {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IDNXB")
	private String idNXB;
	@Column(name = "TenNXB")
	private String tenNXB;
	@Column(name = "DiaChi")
	private String diaChi;
	@Column(name = "SDT")
	private String sDT;
	
	
	public String getIdNXB() {
		return idNXB;
	}
	public void setIdNXB(String idNXB) {
		this.idNXB = idNXB;
	}
	public String getTenNXB() {
		return tenNXB;
	}
	public void setTenNXB(String tenNXB) {
		this.tenNXB = tenNXB;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getsDT() {
		return sDT;
	}
	public void setsDT(String sDT) {
		this.sDT = sDT;
	}
	
	

}

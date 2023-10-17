package web.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TacGia")
public class TacGia {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IDTacGia")
	private String maTG;
	@Column(name = "TenTG")
	private String tenTG;
	@Column(name = "NoiBat")
	private String noiBat;
	
	@Column(name = "Img")
	private String img;
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getMaTG() {
		return maTG;
	}
	public void setMaTG(String maTG) {
		this.maTG = maTG;
	}
	public String getTenTG() {
		return tenTG;
	}
	public void setTenTG(String tenTG) {
		this.tenTG = tenTG;
	}
	public String getNoiBat() {
		return noiBat;
	}
	public void setNoiBat(String noiBat) {
		this.noiBat = noiBat;
	}


	
	
}

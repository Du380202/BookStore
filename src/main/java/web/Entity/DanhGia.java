package web.Entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DanhGia")
public class DanhGia {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IDDanhGia")
	private String idDanhGia;
	@Column(name = "NoiDung")
	private String noiDung;
	@Column(name = "ThoiGian")
	private String thoiGian;
	@Column(name = "DanhGiaSP")
	private int danhGiaSP;
	@Column(name = "UserName")
	private Integer UserName;
	@Column(name = "IDSach")
	private Integer idSach;
	public String getIdDanhGia() {
		return idDanhGia;
	}
	public void setIdDanhGia(String idDanhGia) {
		this.idDanhGia = idDanhGia;
	}
	public String getNoiDung() {
		return noiDung;
	}
	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}
	public String getThoiGian() {
		return thoiGian;
	}
	public void setThoiGian(String thoiGian) {
		this.thoiGian = thoiGian;
	}
	public int getDanhGiaSP() {
		return danhGiaSP;
	}
	public void setDanhGiaSP(int danhGiaSP) {
		this.danhGiaSP = danhGiaSP;
	}
	public Integer getUserID() {
		return UserName;
	}
	public void setUserID(Integer userID) {
		this.UserName = userID;
	}
	public Integer getIdSach() {
		return idSach;
	}
	public void setIdSach(Integer idSach) {
		this.idSach = idSach;
	}
	
	
}

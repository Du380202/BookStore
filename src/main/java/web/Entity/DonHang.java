package web.Entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DonHang")
public class DonHang {
	@Id
	@Column(name = "IDDonHang")
	private Integer idDonHang;
	@Column(name = "NgayGiao")
	private String ngayGiao;
	@Column(name = "NgayDat")
	private String ngayDat;
	@Column(name = "UserName")
	private String UserName;
	@Column(name = "TrangThai")
	private String trangThai;
	public Integer getIdDonHang() {
		return idDonHang;
	}
	public void setIdDonHang(Integer idDonHang) {
		this.idDonHang = idDonHang;
	}
	public String getNgayGiao() {
		return ngayGiao;
	}
	public void setNgayGiao(String ngayGiao) {
		this.ngayGiao = ngayGiao;
	}
	public String getNgayDat() {
		return ngayDat;
	}
	public void setNgayDat(String ngayDat) {
		this.ngayDat = ngayDat;
	}
	public String getUserID() {
		return UserName;
	}
	public void setUserID(String userID) {
		this.UserName = userID;
	}
	public String getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}


	
}

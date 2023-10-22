package web.Entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DonHang")
public class DonHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IDDonHang")
	private Integer idDonHang;
	@Column(name = "NgayGiao")
	private String ngayGiao;
	@Column(name = "NgayDat")
	private String ngayDat;
	@Column(name = "UserId")
	private Integer userId;
	@Column(name = "TrangThai")
	private String trangThai;
	@Column(name="TongTien")
	private Double tongTien;
	@Column(name="DiaChi")
	private String diaChi;
	@Column(name="SDT")
	private String sdt;
	
	
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Double getTongTien() {
		return tongTien;
	}
	public void setTongTien(Double tongTien) {
		this.tongTien = tongTien;
	}
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

	public String getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}


	
}

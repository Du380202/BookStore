package web.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ChiTietDonHang")
public class ChiTietDonHang {
	@Id
	@Column(name = "IDChiTiet")
	private Integer iDChiTiet;
	@Column(name = "IDDonHang")
	private String iDDonHang;
	@Column(name = "IDSach")
	private Integer idSach;
	@Column(name = "SoLuong")
	private String soLuong;
	@Column(name="GiaBan")
	private Integer giaBan;
	public Integer getiDChiTiet() {
		return iDChiTiet;
	}
	public void setiDChiTiet(Integer iDChiTiet) {
		this.iDChiTiet = iDChiTiet;
	}
	public String getiDDonHang() {
		return iDDonHang;
	}
	public void setiDDonHang(String iDDonHang) {
		this.iDDonHang = iDDonHang;
	}
	public Integer getIdSach() {
		return idSach;
	}
	public void setIdSach(Integer idSach) {
		this.idSach = idSach;
	}
	public String getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(String soLuong) {
		this.soLuong = soLuong;
	}
	public Integer getGiaBan() {
		return giaBan;
	}
	public void setGiaBan(Integer giaBan) {
		this.giaBan = giaBan;
	}
	
}

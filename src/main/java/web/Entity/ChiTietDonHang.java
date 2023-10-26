package web.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ChiTietDonHang")
public class ChiTietDonHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IDChiTiet")
	private Integer iDChiTiet;
	@Column(name = "IDDonHang")
	private Integer iDDonHang;
	@Column(name = "IDSach")
	private Integer idSach;
	@Column(name = "SoLuong")
	private Integer soLuong;
	@Column(name="GiaBan")
	private Double giaBan;
	public Integer getiDChiTiet() {
		return iDChiTiet;
	}
	public void setiDChiTiet(Integer iDChiTiet) {
		this.iDChiTiet = iDChiTiet;
	}
	public Integer getiDDonHang() {
		return iDDonHang;
	}
	public void setiDDonHang(Integer iDDonHang) {
		this.iDDonHang = iDDonHang;
	}
	public Integer getIdSach() {
		return idSach;
	}
	public void setIdSach(Integer idSach) {
		this.idSach = idSach;
	}
	public Integer getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(Integer integer) {
		this.soLuong = integer;
	}
	public Double getGiaBan() {
		return giaBan;
	}
	public void setGiaBan(Double giaBan) {
		this.giaBan = giaBan;
	}
	
}

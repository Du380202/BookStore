package web.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ChiTietGioHang")
public class ChiTietGioHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IDChiTietGioHang")
	private Integer iDChiTietGioHang;
	@Column(name = "UserID")
	private Integer userId;
	@Column(name = "IDSach")
	private Integer idSach;
	@Column(name = "Soluong")
	private Integer soLuong;
	@Column(name = "GiaBanSp")
	private Double giaBan;
	public Integer getiDChiTietGioHang() {
		return iDChiTietGioHang;
	}
	public void setiDChiTietGioHang(Integer iDChiTietGioHang) {
		this.iDChiTietGioHang = iDChiTietGioHang;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
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
	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}
	public Double getGiaBan() {
		return giaBan;
	}
	public void setGiaBan(Double giaBan) {
		this.giaBan = giaBan;
	}
	
	
	
	
	

}

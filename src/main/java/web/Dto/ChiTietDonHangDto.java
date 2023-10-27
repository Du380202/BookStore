package web.Dto;

import java.util.List;

public class ChiTietDonHangDto {
	private List<ChiTietGioHangDTO> chiTiet;
	private Integer idDonHang;
	private Double tongTien; 
	private Integer status;
	
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Double getTongTien() {
		return tongTien;
	}
	public void setTongTien(Double tongTien) {
		this.tongTien = tongTien;
	}
	public List<ChiTietGioHangDTO> getChiTiet() {
		return chiTiet;
	}
	public void setChiTiet(List<ChiTietGioHangDTO> chiTiet) {
		this.chiTiet = chiTiet;
	}
	public Integer getIdDonHang() {
		return idDonHang;
	}
	public void setIdDonHang(Integer idDonHang) {
		this.idDonHang = idDonHang;
	}
	
	
}

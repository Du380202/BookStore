package web.Entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Sach")
public class Sach {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "IDSach")
	private Integer maSach;
	@Column(name = "TieuDe")
	private String tenSach;
	@Column(name = "Gia")
	private Double giaBan;
	
	@Column(name = "MoTa")
	private String moTa;
	@Column(name = "Img1")
	private String anh1;
	@Column(name = "Img2")
	private String anh2;
	@Column(name = "Img3")
	private String anh3;
	@Column(name = "SoLuong")
	private Integer soLuongTon;
	@Column(name = "IDTacGia")
	private Integer maTacGia;
	@Column(name = "IDTheLoai")
	private Integer maTheLoai;
	@Column(name = "IDNXB")
	private Integer MaNXB;
	public Integer getMaSach() {
		return maSach;
	}
	public void setMaSach(Integer maSach) {
		this.maSach = maSach;
	}
	public String getTenSach() {
		return tenSach;
	}
	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}
	public Double getGiaBan() {
		return giaBan;
	}
	public void setGiaBan(Double giaBan) {
		this.giaBan = giaBan;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public String getAnh1() {
		return anh1;
	}
	public void setAnh1(String anh1) {
		this.anh1 = anh1;
	}
	public String getAnh2() {
		return anh2;
	}
	public void setAnh2(String anh2) {
		this.anh2 = anh2;
	}
	public String getAnh3() {
		return anh3;
	}
	public void setAnh3(String anh3) {
		this.anh3 = anh3;
	}
	public Integer getSoLuongTon() {
		return soLuongTon;
	}
	public void setSoLuongTon(Integer soLuongTon) {
		this.soLuongTon = soLuongTon;
	}
	public Integer getMaTacGia() {
		return maTacGia;
	}
	public void setMaTacGia(Integer maTacGia) {
		this.maTacGia = maTacGia;
	}
	public Integer getMaTheLoai() {
		return maTheLoai;
	}
	public void setMaTheLoai(Integer maTheLoai) {
		this.maTheLoai = maTheLoai;
	}
	public Integer getMaNXB() {
		return MaNXB;
	}
	public void setMaNXB(Integer maNXB) {
		MaNXB = maNXB;
	}
	
	

	
}

package web.Dto;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.StoredProcedureParameter;

public class ChiTietGioHangDTO {
    private String img1;
    private double gia;
    private double giaBanSp;
    private int soLuong;
    private String tenTG;
    private String tieuDe;
    private int idSach;

    
    public ChiTietGioHangDTO(Integer userID, String img1, double gia, double giaBanSp, int soLuong, String tenTG,
			String tieuDe, int idSach) {
		super();
		this.img1 = img1;
		this.gia = gia;
		this.giaBanSp = giaBanSp;
		this.soLuong = soLuong;
		this.tenTG = tenTG;
		this.tieuDe = tieuDe;
		this.idSach = idSach;
	}

	public ChiTietGioHangDTO() {
		// TODO Auto-generated constructor stub
	}

//	public Integer getUserID() {
//		return userID;
//	}
//
//	public void setUserID(Integer userID) {
//		this.userID = userID;
//	}

	public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public double getGiaBanSp() {
        return giaBanSp;
    }

    public void setGiaBanSp(double giaBanSp) {
        this.giaBanSp = giaBanSp;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public String getTenTG() {
        return tenTG;
    }

    public void setTenTG(String tenTG) {
        this.tenTG = tenTG;
    }

    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    public int getIdSach() {
        return idSach;
    }

    public void setIdSach(int idSach) {
        this.idSach = idSach;
    }
}


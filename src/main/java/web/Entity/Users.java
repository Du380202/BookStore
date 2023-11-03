package web.Entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Users")
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "UserID")
	private Integer maKH;
	@Column(name = "UserName")
	private String userName;

	@Column(name = "HoTen")
	private String hoTen;
	@Column(name = "Pass")
	private String matKhau;
	@Column(name = "Email")
	private String email;
	@Column(name = "DiaChi")
	private String diaChi;
	@Column(name = "SDT")
	private String sDT;
	@Column(name = "NgaySinh")
	private String ngaySinh;
	
	@Column(name = "Avatar")
	private String avatar;
	@Column(name = "RoleID")
	private int roleID;
	@Column(name = "DeXuat")
	private String deXuat;
	public String getDeXuat() {
		return deXuat;
	}
	public void setDeXuat(String deXuat) {
		this.deXuat = deXuat;
	}
	public int getRoleID() {
		return roleID;
	}
	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}
	
	public Integer getMaKH() {
		return maKH;
	}
	public void setMaKH(Integer maKH) {
		this.maKH = maKH;
	}
	public String getHoTen() {
		return hoTen;
	}
	public Users(Integer maKH, String userName, String hoTen, String matKhau, String email, String diaChi, String sDT,
			String ngaySinh, String avata) {
		super();
		this.maKH = maKH;
		this.userName = userName;
		this.hoTen = hoTen;
		this.matKhau = matKhau;
		this.email = email;
		this.diaChi = diaChi;
		this.sDT = sDT;
		this.ngaySinh = ngaySinh;
		this.avatar = avata;
	}
	public Users() {
		super();

	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getsDT() {
		return sDT;
	}
	public void setsDT(String sDT) {
		this.sDT = sDT;
	}
	public String getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avata) {
		this.avatar = avata;
	}

	
}

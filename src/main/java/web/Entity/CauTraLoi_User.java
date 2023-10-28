package web.Entity;

import javax.persistence.*;

@Entity
@Table(name = "User_CauTraLoi")
public class CauTraLoi_User {
	@Id
	@Column(name = "UserID")
	private Integer userId;
	@Column(name = "CauTraLoiId")
	private Integer idCauTraLoi;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getIdCauTraLoi() {
		return idCauTraLoi;
	}
	public void setIdCauTraLoi(Integer idCauTraLoi) {
		this.idCauTraLoi = idCauTraLoi;
	}
	
	
}

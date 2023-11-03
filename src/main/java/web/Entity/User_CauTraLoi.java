package web.Entity;

import javax.persistence.*;

@Entity
@Table(name = "User_CauTraLoi")
public class User_CauTraLoi {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "UCId")
	private Integer usId;
	@Column(name = "UserID")
	private Integer userId;
	@Column(name = "CauTraLoiId")
	private Integer idCauTraLoi;
	@Column(name = "SttAns")
	private Integer stt;
	public Integer getStt() {
		return stt;
	}
	
	public Integer getUsId() {
		return usId;
	}

	public void setUsId(Integer usId) {
		this.usId = usId;
	}

	public void setStt(Integer stt) {
		this.stt = stt;
	}
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

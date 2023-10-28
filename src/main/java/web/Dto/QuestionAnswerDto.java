package web.Dto;

import java.util.List;

import web.Entity.CauTraLoi;

public class QuestionAnswerDto {
	private Integer id;
	private String cauhoi;
	private List<CauTraLoi> answer;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCauhoi() {
		return cauhoi;
	}
	public void setCauhoi(String cauhoi) {
		this.cauhoi = cauhoi;
	}
	public List<CauTraLoi> getAnswer() {
		return answer;
	}
	public void setAnswer(List<CauTraLoi> answer) {
		this.answer = answer;
	}
	
}

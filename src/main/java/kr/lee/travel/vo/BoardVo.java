package kr.lee.travel.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BoardVo {

	Integer num;
	String id;
	String title;
	String contents;
	Integer recommend;
	Integer view;
	Date registered_date;
	String state;
	
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Integer getRecommend() {
		return recommend;
	}
	public void setRecommend(Integer recommend) {
		this.recommend = recommend;
	}
	public Integer getView() {
		return view;
	}
	public void setView(Integer view) {
		this.view = view;
	}
	public Date getRegistered_date() {
		return registered_date;
	}
	public void setRegistered_date(Date registered_date) {
		this.registered_date = registered_date;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "BoardVo [num=" + num + ", id=" + id + ", title=" + title + ", contents=" + contents + ", recommend="
				+ recommend + ", view=" + view + ", registered_date=" + registered_date + ", state=" + state + "]";
	}
	
	

}
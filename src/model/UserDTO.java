package model;

import java.sql.Timestamp;

public class UserDTO {

	private int uNo;
	private String userID;
	private String userPW;
	private Timestamp userRegDate;
	
	public int getuNo() {
		return uNo;
	}
	public void setuNo(int uNo) {
		this.uNo = uNo;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	public Timestamp getUserRegDate() {
		return userRegDate;
	}
	public void setUserRegDate(Timestamp userRegDate) {
		this.userRegDate = userRegDate;
	}
	
	@Override
	public String toString() {
		return "UserDTO [uNo=" + uNo + ", userID=" + userID + ", userPW=" + userPW + ", userRegDate=" + userRegDate
				+ "]";
	}
	
	
	
}

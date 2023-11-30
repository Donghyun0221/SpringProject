package com.future.my.dashboard.vo;

import java.sql.Date;

public class DashboardVO {
	private String Code;
	private String closeDate;
	private int Close;
	private int Volume;
	private String krname;

	public DashboardVO(){
		
	}

	public DashboardVO(String code, String closeDate, int close, int volume, String krname) {
	
		this.Code = code;
		this.closeDate = closeDate;
		this.Close = close;
		this.Volume = volume;
		this.krname = krname;
	}

	@Override
	public String toString() {
		return "DashboardVO [Code=" + Code + ", closeDate=" + closeDate + ", Close=" + Close + ", Volume=" + Volume
				+ ", krname=" + krname + "]";
	}

	public String getCode() {
		return Code;
	}

	public void setCode(String code) {
		this.Code = code;
	}

	public String getCloseDate() {
		return closeDate;
	}

	public void setCloseDate(String closeDate) {
		this.closeDate = closeDate;
	}

	public int getClose() {
		return Close;
	}

	public void setClose(int close) {
		this.Close = close;
	}

	public int getVolume() {
		return Volume;
	}

	public void setVolume(int volume) {
		this.Volume = volume;
	}

	public String getKrname() {
		return krname;
	}

	public void setKrname(String krname) {
		this.krname = krname;
	}
	
	
	
	
	
}

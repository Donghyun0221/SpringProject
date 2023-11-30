package com.future.my.member.vo;

public class MemberVO {
	private String memId;
	private String memPw;
	private String memNm;
	private String memAddr;
	@Override
	public String toString() {
		return "MemberVO [memId=" + memId + ", memPw=" + memPw + ", memNm=" + memNm + ", memAddr=" + memAddr + "]";
	}

	public MemberVO() {
	}

	public MemberVO(String memId, String memPw, String memNm, String memAddr) {
		this.memId = memId;
		this.memPw = memPw;
		this.memNm = memNm;
		this.memAddr = memAddr;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPw() {
		return memPw;
	}

	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}

	public String getMemNm() {
		return memNm;
	}

	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}

	public String getMemAddr() {
		return memAddr;
	}

	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}
	
	


	
}

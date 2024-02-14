package com.landers.airline.dto;

import java.io.Serializable;

public class QnaComment implements Serializable{
	
	private int seq;
	private String id;
	private String content;
	private String wdate;
	private int comseq;
	
	public QnaComment() {
	}

	public QnaComment(int seq, String id, String content, String wdate) {
		super();
		this.seq = seq;
		this.id = id;
		this.content = content;
		this.wdate = wdate;
		this.comseq = comseq;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	
	public int getComseq() {
		return comseq;
	}

	public void setComseq(int comseq) {
		this.comseq = comseq;
	}

	@Override
	public String toString() {
		return "QnaComment [seq=" + seq + ", id=" + id + ", content=" + content + ", wdate=" + wdate + ", comseq="
				+ comseq + "]";
	}

	
}

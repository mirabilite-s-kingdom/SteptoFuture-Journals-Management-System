package com.rain.bean;

public class HistoryBean {
	/**
	 * 历史借阅记录的数据表的bean
	 */
	private int hid;// 借阅记录的id
	private int aid;// 读者的id
	private int bid;// 期刊的id
	private String card;// 期刊号
	private String bookname;// 期刊名称
	private String adminname;// 读者的账号
	private String username;// 读者的姓名
	private String begintime;// 借阅时间
	private String endtime;// 应还时间
	private int status;// 表示借阅状态，1为正在借阅，2是已经归还
	private double yuqiPrice;// 逾期金额
	private int yuqiNum;// 逾期天数

	public int getHid() {
		return hid;
	}

	public void setHid(int hid) {
		this.hid = hid;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getCard() {
		return card;
	}

	public void setCard(String card) {
		this.card = card;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getBegintime() {
		return begintime;
	}

	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public double getYuqiPrice() {
		return yuqiPrice;
	}

	public void setYuqiPrice(double yuqiPrice) {
		this.yuqiPrice = yuqiPrice;
	}

	public int getYuqiNum() {
		return yuqiNum;
	}

	public void setYuqiNum(int yuqiNum) {
		this.yuqiNum = yuqiNum;
	}

}

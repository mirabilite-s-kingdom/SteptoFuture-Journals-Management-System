package com.rain.bean;

public class BookBean {
	/**
	 * 期刊的数据表的bean
	 */
	private int bid;// id
	private String name;// 期刊名称
	private String card;// 期刊号
	private String autho;// 作者
	private String type;// 期刊的分类
	private String press;// 出版社
	private int times;// 借阅次数
	private float bookPrice;// 期刊价格
	private float borrowPrice;// 借阅价格
	private int state;// 状态 1可借阅 0已借阅
	private float overduePrice;// 逾期金额/天

	private String autho2;//作者2
	private String content;//期刊内容
	private String year;
	private String colunm;
	private String item;
	private String key1;
	private String key2;
	private String key3;
	private String key4;
	private String key5;

	public String getAutho2() {
		return autho2;
	}

	public void setAutho2(String autho2) {
		this.autho2 = autho2;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getColunm() {
		return colunm;
	}

	public void setColunm(String colunm) {
		this.colunm = colunm;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getKey1() {
		return key1;
	}

	public void setKey1(String key1) {
		this.key1 = key1;
	}

	public String getKey2() {
		return key2;
	}

	public void setKey2(String key2) {
		this.key2 = key2;
	}

	public String getKey3() {
		return key3;
	}

	public void setKey3(String key3) {
		this.key3 = key3;
	}

	public String getKey4() {
		return key4;
	}

	public void setKey4(String key4) {
		this.key4 = key4;
	}

	public String getKey5() {
		return key5;
	}

	public void setKey5(String key5) {
		this.key5 = key5;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCard() {
		return card;
	}

	public void setCard(String card) {
		this.card = card;
	}

	public float getOverduePrice() {
		return overduePrice;
	}

	public void setOverduePrice(float overduePrice) {
		this.overduePrice = overduePrice;
	}

	public String getAutho() {
		return autho;
	}

	public void setAutho(String autho) {
		this.autho = autho;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPress() {
		return press;
	}

	public void setPress(String press) {
		this.press = press;
	}

	public int getTimes() {
		return times;
	}

	public void setTimes(int times) {
		this.times = times;
	}

	public float getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(float bookPrice) {
		this.bookPrice = bookPrice;
	}

	public float getBorrowPrice() {
		return borrowPrice;
	}

	public void setBorrowPrice(float borrowPrice) {
		this.borrowPrice = borrowPrice;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

}

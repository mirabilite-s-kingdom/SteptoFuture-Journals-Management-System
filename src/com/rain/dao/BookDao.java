package com.rain.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import com.rain.bean.AdminBean;
import com.rain.bean.BookBean;
import com.rain.bean.HistoryBean;
import com.rain.util.DBUtil;
import com.rain.util.SQLUtil;
import com.sun.org.apache.xpath.internal.compiler.Keywords;

/**
 * 关于期刊连接数据库的所有操作的类
 */
public class BookDao {

	/**
	 * 添加期刊信息，传入所有的信息
	 *
	 * @param card
	 * @param name
	 * @param type
	 * @param autho
	 * @param press
	 */
	public void addBook(String card, String name, String type, String autho, String press, float bookPrice,
						float borrowPrice, float overduePrice,String autho2,String content,String nian,String colunm,String item
			,String keyword1,String keyword2,String keyword3,String keyword4,String keyword5) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "insert into book(card,name,type,autho,press,times,bookPrice,borrowPrice,overduePrice,autho2,content,year,colunm,item,key1,key2,key3,key4,key5) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		int rs = 0;
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, card);
			stm.setString(2, name);
			stm.setString(3, type);
			stm.setString(4, autho);
			stm.setString(5, press);
			stm.setInt(6, 0);
			stm.setFloat(7, bookPrice);
			stm.setFloat(8, borrowPrice);
			stm.setFloat(9, overduePrice);
			stm.setString(10,autho2);
			stm.setString(11,content);
			stm.setString(12,nian);
			stm.setString(13,colunm);
			stm.setString(14,item);
			stm.setString(15,keyword1);
			stm.setString(16,keyword2);
			stm.setString(17,keyword3);
			stm.setString(18,keyword4);
			stm.setString(19,keyword5);

			rs = stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 获取所有的期刊信息，返回的是ArrayList数组形式
	 *
	 * @return
	 */
	public ArrayList<BookBean> get_ListInfo() {
		ArrayList<BookBean> tag_Array = new ArrayList<BookBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from book";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				BookBean tag = new BookBean();
				tag.setBid(rs.getInt("bid"));
				tag.setName(rs.getString("name"));
				tag.setCard(rs.getString("card"));
				tag.setType(rs.getString("type"));
				tag.setAutho(rs.getString("autho"));
				tag.setPress(rs.getString("press"));
				tag.setTimes(rs.getInt("times"));
				tag.setOverduePrice(rs.getFloat("overduePrice"));
				tag.setBookPrice(rs.getFloat("bookPrice"));
				tag.setBorrowPrice(rs.getFloat("borrowPrice"));
				tag.setState(rs.getInt("state"));

				tag.setAutho2(rs.getString("autho2"));
				tag.setContent(rs.getString("content"));
				tag.setYear(rs.getString("year"));
				tag.setColunm(rs.getString("colunm"));
				tag.setItem(rs.getString("item"));
				tag.setKey1(rs.getString("key1"));
				tag.setKey2(rs.getString("key2"));
				tag.setKey3(rs.getString("key3"));
				tag.setKey4(rs.getString("key4"));
				tag.setKey5(rs.getString("key5"));
				tag_Array.add(tag);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag_Array;
	}

	/**
	 * 获取所有的期刊信息并排序，返回的是ArrayList数组形式
	 *
	 * @return
	 */
	public ArrayList<BookBean> get_ListInfo2() {
		ArrayList<BookBean> tag_Array = new ArrayList<BookBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from book order by times desc";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				BookBean tag = new BookBean();
				tag.setBid(rs.getInt("bid"));
				tag.setName(rs.getString("name"));
				tag.setCard(rs.getString("card"));
				tag.setType(rs.getString("type"));
				tag.setAutho(rs.getString("autho"));
				tag.setPress(rs.getString("press"));
				tag.setTimes(rs.getInt("times"));
				tag.setOverduePrice(rs.getFloat("overduePrice"));
				tag.setBookPrice(rs.getFloat("bookPrice"));
				tag.setBorrowPrice(rs.getFloat("borrowPrice"));
				tag.setState(rs.getInt("state"));

				tag.setAutho2(rs.getString("autho2"));
				tag.setContent(rs.getString("content"));
				tag.setYear(rs.getString("year"));
				tag.setColunm(rs.getString("colunm"));
				tag.setItem(rs.getString("item"));
				tag.setKey1(rs.getString("key1"));
				tag.setKey2(rs.getString("key2"));
				tag.setKey3(rs.getString("key3"));
				tag.setKey4(rs.getString("key4"));
				tag.setKey5(rs.getString("key5"));
				tag_Array.add(tag);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag_Array;
	}

	/**
	 * 获取借阅记录的全部信息，传入的条件有status，aid，表示搜索正在借阅的，或者已经归还的信息，aid代表当前登录用户
	 *
	 * @param status
	 * @return
	 */
	public ArrayList<HistoryBean> get_HistoryListInfo(int status, String aid) {
		ArrayList<HistoryBean> tag_Array = new ArrayList<HistoryBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from history where aid=" + aid + " and status=" + status;
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				HistoryBean tag = new HistoryBean();
				tag.setHid(rs.getInt("hid"));
				tag.setAid(rs.getInt("aid"));
				tag.setBid(rs.getInt("bid"));
				tag.setBookname(rs.getString("bookname"));
				tag.setCard(rs.getString("card"));
				tag.setAdminname(rs.getString("adminname"));
				tag.setUsername(rs.getString("username"));
				tag.setBegintime(rs.getString("begintime"));
				tag.setEndtime(rs.getString("endtime"));
				tag.setStatus(rs.getInt("status"));
				tag.setYuqiNum(rs.getInt("yuqiNum"));
				tag.setYuqiPrice(rs.getDouble("yuqiPrice"));


				tag_Array.add(tag);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag_Array;
	}

	///bitk 新添加的功能
	/**
	 * 根据期刊名模糊查询
	 *
	 * @return
	 */
	public ArrayList<HistoryBean> get_AllHistoryByVague(String keyword) {
		ArrayList<HistoryBean> tag_Array = new ArrayList<HistoryBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from history where bookname like '%" + keyword + "%'";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				HistoryBean tag = new HistoryBean();
				tag.setHid(rs.getInt("hid"));
				tag.setAid(rs.getInt("aid"));
				tag.setBid(rs.getInt("bid"));
				tag.setBookname(rs.getString("bookname"));
				tag.setCard(rs.getString("card"));
				tag.setAdminname(rs.getString("adminname"));
				tag.setUsername(rs.getString("username"));
				tag.setBegintime(rs.getString("begintime"));
				tag.setEndtime(rs.getString("endtime"));
				tag.setStatus(rs.getInt("status"));
				tag.setYuqiNum(rs.getInt("yuqiNum"));
				tag.setYuqiPrice(rs.getDouble("yuqiPrice"));


				tag_Array.add(tag);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag_Array;
	}

	/**
	 * 获取借阅记录的全部信息，传入的条件有status，表示搜索正在借阅的，或者已经归还的信息
	 *
	 * @param status
	 * @return
	 */
	public ArrayList<HistoryBean> get_HistoryListInfo2(int status) {
		ArrayList<HistoryBean> tag_Array = new ArrayList<HistoryBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from history where status=" + status;
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				HistoryBean tag = new HistoryBean();
				tag.setHid(rs.getInt("hid"));
				tag.setAid(rs.getInt("aid"));
				tag.setBid(rs.getInt("bid"));
				tag.setBookname(rs.getString("bookname"));
				tag.setCard(rs.getString("card"));
				tag.setAdminname(rs.getString("adminname"));
				tag.setUsername(rs.getString("username"));
				tag.setBegintime(rs.getString("begintime"));
				tag.setEndtime(rs.getString("endtime"));
				tag.setStatus(rs.getInt("status"));
				tag.setYuqiNum(rs.getInt("yuqiNum"));
				tag.setYuqiPrice(rs.getDouble("yuqiPrice"));

				tag_Array.add(tag);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag_Array;
	}

	/**
	 * 获取单个期刊的信息，根据传入的bid来查找，返回一个BookBean数据类型
	 *
	 * @param bid
	 * @return
	 */
	public BookBean get_BookInfo(int bid) {
		BookBean tag = new BookBean();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from book where bid=" + bid;
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				tag.setBid(rs.getInt("bid"));
				tag.setName(rs.getString("name"));
				tag.setCard(rs.getString("card"));
				tag.setType(rs.getString("type"));
				tag.setAutho(rs.getString("autho"));
				tag.setPress(rs.getString("press"));
				tag.setTimes(rs.getInt("times"));
				tag.setOverduePrice(rs.getFloat("overduePrice"));

				tag.setAutho2(rs.getString("autho2"));
				tag.setContent(rs.getString("content"));
				tag.setYear(rs.getString("year"));
				tag.setColunm(rs.getString("colunm"));
				tag.setItem(rs.getString("item"));
				tag.setKey1(rs.getString("key1"));
				tag.setKey2(rs.getString("key2"));
				tag.setKey3(rs.getString("key3"));
				tag.setKey4(rs.getString("key4"));
				tag.setKey5(rs.getString("key5"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag;
	}

	/**
	 * 修改期刊的信息，bid作为条件
	 */
	public void updateBook(int bid, String card, String name, String type, String autho, String press, float bookPrice,
						   float borrowPrice, float overduePrice) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "update book set name=?,card=?,type=?,autho=?,press=?,bookPrice=?,borrowPrice=?,overduePrice=? where bid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, name);
			stm.setString(2, card);
			stm.setString(3, type);
			stm.setString(4, autho);
			stm.setString(5, press);
			stm.setFloat(6, bookPrice);
			stm.setFloat(7, borrowPrice);
			stm.setFloat(8, overduePrice);
			stm.setInt(9, bid);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 删除期刊信息，根据传入的bid作为条件
	 *
	 * @param bid
	 */
	public void deleteBook(int bid) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "delete from book where bid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setInt(1, bid);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 用户查找期刊，根据输入的名称，使用like进行模糊查询，然后返回一个ArrayList数组类型
	 *
	 * @param name
	 * @return
	 */
	public ArrayList<BookBean> getLikeList(String name) {
		// TODO Auto-generated method stub
		ArrayList<BookBean> tag_Array = new ArrayList<BookBean>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from book where name like '%" + name + "%' or autho like '%" + name
				+ "%' or type like '%" + name + "%'";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				BookBean tag = new BookBean();
				tag.setBid(rs.getInt("bid"));
				tag.setName(rs.getString("name"));
				tag.setCard(rs.getString("card"));
				tag.setType(rs.getString("type"));
				tag.setAutho(rs.getString("autho"));
				tag.setPress(rs.getString("press"));
				tag.setTimes(rs.getInt("times"));
				tag.setOverduePrice(rs.getFloat("overduePrice"));
				tag.setBookPrice(rs.getFloat("bookPrice"));
				tag.setBorrowPrice(rs.getFloat("borrowPrice"));
				tag.setState(rs.getInt("state"));

				tag.setAutho2(rs.getString("autho2"));
				tag.setContent(rs.getString("content"));
				tag.setYear(rs.getString("year"));
				tag.setColunm(rs.getString("colunm"));
				tag.setItem(rs.getString("item"));
				tag.setKey1(rs.getString("key1"));
				tag.setKey2(rs.getString("key2"));
				tag.setKey3(rs.getString("key3"));
				tag.setKey4(rs.getString("key4"));
				tag.setKey5(rs.getString("key5"));
				tag_Array.add(tag);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.CloseDB(rs, stm, conn);
		}
		return tag_Array;
	}

	/**
	 * 期刊借阅函数，根据传入bid期刊id，adminbean当前登录用户的信息，在借阅记录数据表中新插入一条记录
	 *
	 * @param bid
	 * @param adminbean
	 */
	public void borrowBook(int bid, AdminBean adminbean) {
		// TODO Auto-generated method stub
		BookBean bookbean = new BookBean();
		bookbean = this.get_BookInfo(bid);

		// 生成日期的功能
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH) + 1;
		int day = c.get(Calendar.DATE);

		// 生成借阅开始日期
		String begintime = "" + year + "-" + month + "-" + day;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Calendar cd = Calendar.getInstance();
		try {
			cd.setTime(sdf.parse(begintime));
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		cd.add(Calendar.DATE, adminbean.getLend_num());// 增加
		// 生成截止归还日期
		String endtime = sdf.format(cd.getTime());

//		month = month + 1;
//		// 生成截止归还日期
//		String endtime = "" + year + "-" + month + "-" + day;

		Connection conn = DBUtil.getConnectDb();
		String sql = "insert into history(aid,bid,card,bookname,adminname,username,begintime,endtime,status) values(?,?,?,?,?,?,?,?,?)";
		int rs = 0;
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setInt(1, adminbean.getAid());
			stm.setInt(2, bookbean.getBid());
			stm.setString(3, bookbean.getCard());
			stm.setString(4, bookbean.getName());
			stm.setString(5, adminbean.getUsername());
			stm.setString(6, adminbean.getName());
			stm.setString(7, begintime);
			stm.setString(8, endtime);
			stm.setInt(9, 1);


			rs = stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql2 = "update book set times=? where bid=?";
		PreparedStatement stm2 = null;
		try {
			stm2 = conn.prepareStatement(sql2);
			stm2.setInt(1, bookbean.getTimes() + 1);
			stm2.setInt(2, bookbean.getBid());
			stm2.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql3 = "update admin set times=? where aid=?";
		PreparedStatement stm3 = null;
		try {
			stm3 = conn.prepareStatement(sql3);
			stm3.setInt(1, adminbean.getTimes() + 1);
			stm3.setInt(2, adminbean.getAid());
			stm3.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 归还功能的函数，根据传入的hid借阅记录id，将status字段的值改为0，并将归还日期改变为当前日期
	 *
	 * @param hid
	 */
	public void borrowBook2(int hid) {
		// TODO Auto-generated method stub
		// 生成日期
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH) + 1;
		int day = c.get(Calendar.DATE);
		// 生成归还日期
		String endtime = "" + year + "-" + month + "-" + day;
		Connection conn = DBUtil.getConnectDb();
		String sql = "update history set endtime=?,status=? where hid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, endtime);
			stm.setInt(2, 0);
			stm.setInt(3, hid);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 期刊延期，根据传入hid记录id，在借阅记录数据表中更新endtime记录
	 *
	 * @param hid
	 * @param endtime
	 */
	public void AddTime(int hid, String endtime) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "update history set endtime=? where hid=?";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, endtime);
			stm.setInt(2, hid);
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public boolean updateState(int state, int bid) {
		String sql = "update book set state=? where bid=?";

		Object[] paramArray = new Object[2];
		paramArray[0] = state;
		paramArray[1] = bid;

		return SQLUtil.getInstance().update(sql, paramArray);

	}

	public boolean updateStateByCard(int state, String card) {
		String sql = "update book set state=? where card=?";

		Object[] paramArray = new Object[2];
		paramArray[0] = state;
		paramArray[1] = card;

		return SQLUtil.getInstance().update(sql, paramArray);

	}

	public boolean updateYuQi(int hid, Double num, double yuqi) {
		String sql = "update history set yuqiNum=?,yuqiPrice=? where hid=?";

		Object[] paramArray = new Object[3];
		paramArray[0] = num;
		paramArray[1] = yuqi;
		paramArray[2] = hid;

		return SQLUtil.getInstance().update(sql, paramArray);

	}

}

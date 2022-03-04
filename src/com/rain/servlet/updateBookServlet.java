package com.rain.servlet;

import com.rain.dao.BookDao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateBookServlet
 */
@WebServlet("/updateBookServlet")
public class updateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public updateBookServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		// 修改期刊信息
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String card = request.getParameter("card");
		String name = request.getParameter("name");
		String type = request.getParameter("type");
		String autho = request.getParameter("autho");
		String press = request.getParameter("press");
		int bid = Integer.parseInt(request.getParameter("updatebid"));
		float bookPrice = Float.parseFloat(request.getParameter("bookPrice"));
		float borrowPrice = Float.parseFloat(request.getParameter("borrowPrice"));
		float overduePrice = Float.parseFloat(request.getParameter("overduePrice"));
		BookDao bookdao = new BookDao();
		bookdao.updateBook(bid, card, name, type, autho, press, bookPrice, borrowPrice,overduePrice);
		response.sendRedirect("/admin_book.jsp");
	}

}

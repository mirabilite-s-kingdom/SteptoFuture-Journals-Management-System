package com.rain.servlet;

import com.rain.dao.BookDao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddBookServlet
 */
@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddBookServlet() {
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
		// 设置编码类型
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 获取要添加期刊的信息
		String card = request.getParameter("card");
		String name = request.getParameter("name");
		String type = request.getParameter("type");
		String autho = request.getParameter("autho");
		String press = request.getParameter("press");
		Float bookPrice = Float.parseFloat(request.getParameter("bookPrice"));
		Float borrowPrice = Float.parseFloat(request.getParameter("borrowPrice"));
		Float overduePrice = Float.parseFloat(request.getParameter("overduePrice"));
		//因为添加了额外的字段
        String autho2=request.getParameter("autho2");
		String content=request.getParameter("content");;
        String year=request.getParameter("year");
        String colunm=request.getParameter("colunm");
		String item=request.getParameter("item");
		String keyword1=request.getParameter("keyword1");
		String keyword2=request.getParameter("keyword2");
		String keyword3=request.getParameter("keyword3");
		String keyword4=request.getParameter("keyword4");
		String keyword5=request.getParameter("keyword5");


		BookDao bookdao = new BookDao();
		// 调用函数，存入期刊
		bookdao.addBook(card, name, type, autho, press, bookPrice,borrowPrice,overduePrice,autho2,content,year,colunm,item,keyword1,keyword2,keyword3,keyword4,keyword5);
		response.sendRedirect("/admin_book.jsp");
	}

}

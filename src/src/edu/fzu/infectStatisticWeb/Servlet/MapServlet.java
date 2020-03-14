package edu.fzu.infectStatisticWeb.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fzu.infectStatisticWeb.dao.IpDAO;
import edu.fzu.infectStatisticWeb.dao.IpDAOImpl;
import edu.fzu.infectStatisticWeb.pojo.*;

/**
 * Servlet implementation class map
 */
@WebServlet("/mapServlet")
public class MapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MapServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter pw = response.getWriter();
		pw.println("mapServlet");
		String flag = (String)request.getAttribute("flag");
		String dateTime = request.getParameter("dateTime");
		IpDAO ipDAO = new IpDAOImpl();
		if(flag != null && flag.equals("iniTime")) {	
			Ip ip = ipDAO.lists("2020-02-02");
			request.setAttribute("ip",ip);	
			if(ip == null) pw.println("ip «ø’");
			request.getRequestDispatcher("mainPage.jsp").forward(request, response);
		}
		else if(dateTime != null) {
				
			
			Ip ip = ipDAO.lists(dateTime);
			request.setAttribute("ip",ip);	
			request.getRequestDispatcher("mainPage.jsp").forward(request, response);
		}
		
		pw.println(flag);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

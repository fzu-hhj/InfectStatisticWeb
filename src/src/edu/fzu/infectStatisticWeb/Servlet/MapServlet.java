package edu.fzu.infectStatisticWeb.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fzu.infectStatisticWeb.dao.CureDAO;
import edu.fzu.infectStatisticWeb.dao.CureDAOImpl;
import edu.fzu.infectStatisticWeb.dao.DeadDAO;
import edu.fzu.infectStatisticWeb.dao.DeadDAOImpl;
import edu.fzu.infectStatisticWeb.dao.IpDAO;
import edu.fzu.infectStatisticWeb.dao.IpDAOImpl;
import edu.fzu.infectStatisticWeb.dao.SpDAO;
import edu.fzu.infectStatisticWeb.dao.SpDAOImpl;
import edu.fzu.infectStatisticWeb.pojo.*;

/**
 * Servlet implementation class map
 */
@WebServlet("/mapServlet")
public class MapServlet extends BaseServlet {
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
		request.setCharacterEncoding("utf-8");
		//PrintWriter pw = response.getWriter();
		//pw.println("mapServlet");
		String date = getDate();
		//System.out.println(date);
		IpDAO ipDAO = new IpDAOImpl();
		Ip ip = ipDAO.lists(date);
		SpDAO spDAO = new SpDAOImpl();
		Sp sp = spDAO.lists(date);
		CureDAO cureDAO = new CureDAOImpl();
		Cure cure = cureDAO.lists(date);
		DeadDAO deadDAO = new DeadDAOImpl();
		Dead dead = deadDAO.lists(date);
		request.setAttribute("ip", ip);
		request.setAttribute("sp", sp);
		request.setAttribute("cure", cure);
		request.setAttribute("dead", dead);
		request.getRequestDispatcher("mainPage.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private String getDate() {
		String date = request.getParameter("dateTime");
		if(date != null) {
			return date;
		}
		return "2020-02-02";
	}

}

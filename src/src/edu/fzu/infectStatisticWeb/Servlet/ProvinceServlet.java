package edu.fzu.infectStatisticWeb.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.ParameterParser;
import org.eclipse.jdt.internal.compiler.env.IGenericField;

import edu.fzu.infectStatisticWeb.dao.*;
import edu.fzu.infectStatisticWeb.pojo.*;

/**
 * Servlet implementation class ProvinceServlet
 */
@WebServlet("/provinceServlet")
public class ProvinceServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProvinceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String dateTime = getDateTime();
		IpDAO ipDAO =new IpDAOImpl();
		Ip ip = ipDAO.lists(dateTime);
		SpDAO spDAO = new SpDAOImpl();
		Sp sp = spDAO.lists(dateTime);
		CureDAO cureDAO = new CureDAOImpl();
		Cure cure = cureDAO.lists(dateTime);
		DeadDAO deadDAO = new DeadDAOImpl();
		Dead dead = deadDAO.lists(dateTime);
		request.setAttribute("ip" , ip);
		request.setAttribute("sp", sp);
		request.setAttribute("cure", cure);
		request.setAttribute("dead", dead);
		request.setAttribute("province", request.getAttribute("province"));
		request.getRequestDispatcher("ProvinceNum.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private String getDateTime() {
		String dateTime = request.getParameter("dateTime");
		if(dateTime != null) {
			return dateTime;
		}
		return "2020-02-02";
	}

}

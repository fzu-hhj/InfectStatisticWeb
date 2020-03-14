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
@WebServlet("/ProvinceServlet")
public class ProvinceServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	public static String[] PROVINCE = {
			"全国","安徽","澳门","北京","重庆","福建",
			"甘肃","广东","广西","贵州","海南","河北","河南","黑龙江",
			"湖北","湖南","江西","吉林","江苏","辽宁","内蒙古","宁夏",
			"青海","山西","山东","陕西","上海","四川","天津","台湾",
			"西藏","新疆","香港","云南","浙江"};   
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
		String flag = request.getParameter("flag"); 
		if(flag != null && flag.equals("refresh")) {
			request.setAttribute("proNum",Integer.parseInt(request.getParameter("proNum")));
		}
		else {
			request.setAttribute("proNum", getProNum());
		}
		request.getRequestDispatcher("ProvinceNum.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private int getProNum() {
		String province = request.getParameter("province");
		if(province != null) {
			for(int i = 0;i < PROVINCE.length;i++) {
				if(province.equals(PROVINCE[i])) {
					return i;
				}
			}
		}
		return 0;
	}
	
	private String getDateTime() {
		String dateTime = request.getParameter("dateTime");
		if(dateTime != null) {
			return dateTime;
		}
		return "2020-02-02";
	}

}

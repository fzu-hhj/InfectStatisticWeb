package edu.fzu.infectStatisticWeb.Servlet;

import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fzu.infectStatisticWeb.dao.*;
import edu.fzu.infectStatisticWeb.pojo.*;
import edu.fzu.infectStatisticWeb.Servlet.BaseServlet;

/**
 * Servlet implementation class LineServlet
 */
@WebServlet("/LineServlet")
public class LineServlet extends BaseServlet {
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
    public LineServlet() {
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
		IpDAO ipDAO = new IpDAOImpl();
		List<Ip> ips = ipDAO.list();
		SpDAO spDAO = new SpDAOImpl();
		List<Sp> sps = spDAO.list();
		CureDAO cureDAO = new CureDAOImpl();
		List<Cure> cures = cureDAO.list();
		DeadDAO deadDAO = new DeadDAOImpl();
		List<Dead> deads = deadDAO.list();
		request.setAttribute("ips" , ips);
		request.setAttribute("sps", sps);
		request.setAttribute("cures", cures);
		request.setAttribute("deads", deads);
		request.setAttribute("proNum", getProNum());
		request.getRequestDispatcher("LineChart.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	//省名转化为省的编号
	private int getProNum() {
		String province = request.getParameter("province");
		if(province == null) {
			province = "全国";
		}
		System.out.println(PROVINCE.length);
		for(int i = 0;i < PROVINCE.length;i++) {
			if(province.equals(PROVINCE[i])) {
				return i;
			}
		}
		return 0;
	}
}

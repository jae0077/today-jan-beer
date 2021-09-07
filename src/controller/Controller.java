package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CountryDAO;

@WebServlet("/controller")
public class Controller extends HttpServlet {
	
	private static CountryDAO countryDAO = CountryDAO.getInstance();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		
		if(command.equals("continent")) {
			countryAll(request, response);
		}
		
	}
	
	public void countryAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		try {
			int continent = Integer.parseInt(request.getParameter("continent"));
			request.setAttribute("countryAll", countryDAO.getCountry(continent));
			url = "continent/asia.jsp";
		}catch(Exception s){
			request.setAttribute("errorMsg", s.getMessage());
			s.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	

}

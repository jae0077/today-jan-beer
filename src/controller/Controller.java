package controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO.BeerDAO;
import model.DAO.CountryDAO;
import model.entity.Country;

@WebServlet("/controller")
public class Controller extends HttpServlet {

	private static CountryDAO countryDAO = CountryDAO.getInstance();
	private static BeerDAO beerDAO = BeerDAO.getInstance();

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		
		if (command.equals("continent")) {
			selectCountry(request, response);
		} else if (command.equals("beer")) {
			selectBeer(request, response);
		}
	}
  
	public void selectCountry(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		try {
			int continentIdx = Integer.parseInt(request.getParameter("continent"));
				request.setAttribute("selectCountryList", countryDAO.selectCountryList(continentIdx));
				url = "continent/continent.jsp";
		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
			s.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void selectBeer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "showError.jsp";
		try {
			int countryIdx = Integer.parseInt(request.getParameter("country"));
			request.setAttribute("selectBeer", beerDAO.selectBeer(countryIdx));
			request.setAttribute("selectCountry", countryDAO.selectCountry(countryIdx));
			request.setAttribute("selectCountryName", countryDAO.selectCountryName(countryIdx));
			
			url = "country/country.jsp";
		} catch (Exception s) {
			request.setAttribute("errorMsg", s.getMessage());
			s.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}

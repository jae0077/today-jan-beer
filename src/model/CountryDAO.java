package model;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;

import org.junit.jupiter.api.Test;

import model.entity.Continent;
import model.entity.Country;
import model.util.DBUtil;

public class CountryDAO {
	
	private static CountryDAO instance = new CountryDAO();
	
	private CountryDAO() {}
	
	public static CountryDAO getInstance() {
		return instance;
	}
	
	/** 대륙에 속한 나라 검색  **/
	public List<Country> getCountry(int continentIdx) {
		EntityManager em = DBUtil.getEntityManager();
		List<Country> countryList = null;
		try {
			countryList = (List<Country>)em.createNamedQuery("Country.findCountry").setParameter("continentIdx", em.find(Continent.class, continentIdx)).getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
			em = null;
		}
		return countryList;
	}
	
}

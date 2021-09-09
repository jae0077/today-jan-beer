package model.DAO;

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
	
	/** 대륙별 나라리스트 조회  **/
	public List<Country> selectCountryList(int continentIdx) {
		
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
	
	/** 나라 조회  **/
	public Country selectCountry(int countryIdx) {
		
		EntityManager em = DBUtil.getEntityManager();
		Country country = null;
		try {
			country = em.find(Country.class, countryIdx); //
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
			em = null;
		}
		return country;
	}
	
}
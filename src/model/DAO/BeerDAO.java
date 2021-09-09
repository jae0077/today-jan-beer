package model.DAO;

import java.util.List;

import javax.persistence.EntityManager;

import model.entity.Beer;
import model.entity.Country;
import model.util.DBUtil;

public class BeerDAO {

	private static BeerDAO instance = new BeerDAO();
	
	private BeerDAO() {}
	
	public static BeerDAO getInstance() {
		return instance;
	}
	
	/** 나라별 맥주리스트 주회 **/
	public List<Beer> selectBeer(int countryIdx){
		
		EntityManager em = DBUtil.getEntityManager();
		List<Beer> beerList = null;
		try {
			beerList = (List<Beer>)em.createNamedQuery("Beer.findBeer").setParameter("countryIdx", em.find(Country.class, countryIdx)).getResultList();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			em.close();
			em = null;
		}return beerList;
	}
	
}

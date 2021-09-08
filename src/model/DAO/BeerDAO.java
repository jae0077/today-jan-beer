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
	
	public List<Beer> selectBeer(int country){
		
		EntityManager em = DBUtil.getEntityManager();
		List<Beer> beerList = null;
		try {
			beerList = (List<Beer>)em.createNamedQuery("Beer.findBeer").setParameter("countryIdx", em.find(Country.class, country)).getResultList();
		}catch(Exception e) {
//			e.printStackTrace();
		}finally {
			em.close();
			em = null;
		}return beerList;
	}
	
	public boolean updateBeer(int beerIdx, float alcohol) {
		EntityManager em = DBUtil.getEntityManager();
		em.getTransaction().begin();
		boolean result = false;
		try {
			em.find(Beer.class, beerIdx).setAlcohol(alcohol);
			
			em.getTransaction().commit();
			result = true;
		}catch(Exception e) {
//			e.printStackTrace();
			em.getTransaction().rollback();	
		}finally {
			em.close();
		}return result;
	}
}

package model.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter

@NamedQuery(query="select c from country c where c.continentIdx=:continentIdx", name="Country.findCountry")
@Entity(name="country")
@SequenceGenerator(name="country_idx_seq", sequenceName="country_idx_seq", initialValue=1, allocationSize=1)
public class Country {
	@Id
	@Column(name="country_idx")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="country_idx_seq")
	private int countryIdx;
	
	@Column(name="name", length=20, nullable=false, unique=true)
	private String name;

	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="continent_idx")
	private Continent continentIdx;
	
	@Column(name="beer_idx", nullable=true, unique=true)
	@OneToMany(fetch=FetchType.LAZY, mappedBy="countryIdx")
	private List<Beer> beerIdx;

	@Column(name="img_path", length=30, nullable=false, unique=true)
	private String imgPath;
	
	@Column(name="info")
	private String info;

}
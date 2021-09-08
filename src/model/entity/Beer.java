package model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity(name="beer")
@NamedQuery(query="select b from beer b where b.countryIdx=:countryIdx", name="Beer.findBeer")
@SequenceGenerator(name="beer_idx_seq", sequenceName="beer_idx_seq", initialValue=1, allocationSize=1)
public class Beer {
	@Id
	@Column(name="beer_idx")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="beer_idx_seq")
	private int beerIdx;
	
	@Column(name="name", length=30, nullable=false, unique=true)
	private String name;
	
	@Column(name="alcohol", nullable=false)
	private float alcohol;
	
	@Column(name="kinds", length=20, nullable=false)
	private String kinds;
	
	@Column(name="info", length=100, nullable=false)
	private String info;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="country_idx")
	private Country countryIdx;
}

package model.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@Entity(name="continent")
@SequenceGenerator(name="continent_idx_seq", sequenceName="continent_idx_seq", initialValue=1, allocationSize=1)
public class Continent {
	@Id
	@Column(name="continent_idx")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="continent_idx_seq")
	private int continentIdx;
	
	@Column(name="name", length=20, nullable=false, unique=true)
	private String name;
	
	@Column(name="country_idx", nullable=true, unique=true)
	@OneToMany(fetch=FetchType.LAZY, mappedBy="continentIdx")
	private List<Country> countryIdx;
}

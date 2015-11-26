

package domain;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Access(AccessType.PROPERTY)
public class Votation extends DomainEntity {

	// Constructors -----------------------------------------------------------

	public Votation() {
		super();		
	}

	// Attributes -------------------------------------------------------------

	private String name;
	private Date moment;	
	
	// ------------ Relationships attributes ------------ 
	
	private Collection<Vote> votes;

	
	
	@NotBlank
	public String getName() {
		return name;
	}

	public void setName(String encriptedVote) {
		this.name = encriptedVote;
	}
	
	@NotNull
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "dd/MM/yyyy HH:mm")
	@Past
	public Date getMoment() {
		return moment;
	}

	public void setMoment(Date moment) {
		this.moment = moment;
	}
	
	
	
	


	// Relationships ----------------------------------------------------------
	@Valid
	@OneToMany(cascade = CascadeType.ALL)
	public Collection<Vote> getVotes() {
		return votes;
	}

	public void setVotes(Collection<Vote> votes) {
		this.votes = votes;
	}
	
	
}

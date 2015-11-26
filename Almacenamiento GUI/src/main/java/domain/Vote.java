

package domain;

import java.util.Date;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Access(AccessType.PROPERTY)
public class Vote extends DomainEntity {

	// Constructors -----------------------------------------------------------

	public Vote() {
		super();		
	}

	// Attributes -------------------------------------------------------------

	private String vote;
	private Date moment;
	private String location;
	
	// ------------ Relationships attributes ------------ 
	
	private Votation votation;

	@NotBlank
	public String getVote() {
		return vote;
	}

	public void setVote(String vote) {
		this.vote = vote;
	}
	
	@NotBlank
	public String getLocation(){
		return location;
	}
	
	public void setLocation(String location){
		this.location=location;
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
	@ManyToOne(optional=false)
	public Votation getVotation() {
		return votation;
	}
	
	public void setVotation(Votation votation) {
		this.votation = votation;
	}
	
}



package domain;

import java.util.Date;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
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

	private String encriptedVote;
	private Date moment;	

	@NotBlank
	public String getEncriptedVote() {
		return encriptedVote;
	}

	public void setEncriptedVote(String encriptedVote) {
		this.encriptedVote = encriptedVote;
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
	
	// Derived relationships --------------------------------------------------
	
}

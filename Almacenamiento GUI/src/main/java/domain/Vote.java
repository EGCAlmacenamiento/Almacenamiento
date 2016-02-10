package domain;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.validation.Valid;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Access(AccessType.PROPERTY)
public class Vote extends DomainEntity {

	// Constructors -----------------------------------------------------------

	public Vote() {
		super();
	}

	// Attributes -------------------------------------------------------------

	private String vote;
	private String zipCode;

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
	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	// Relationships ----------------------------------------------------------

	@Valid
	@ManyToOne(optional = false)
	public Votation getVotation() {
		return votation;
	}

	public void setVotation(Votation votation) {
		this.votation = votation;
	}

}

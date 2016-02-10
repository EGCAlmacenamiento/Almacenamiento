package domain;

import java.util.Collection;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.validation.Valid;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Access(AccessType.PROPERTY)
public class Votation extends DomainEntity {

	// Constructors -----------------------------------------------------------

	public Votation() {
		super();
	}

	// Attributes -------------------------------------------------------------

	private String name;

	// ------------ Relationships attributes ------------

	private Collection<Vote> votes;

	@NotBlank
	public String getName() {
		return name;
	}

	public void setName(String encriptedVote) {
		this.name = encriptedVote;
	}

	// Relationships ----------------------------------------------------------
	@Valid
	@OneToMany(mappedBy = "votation", cascade = CascadeType.ALL)
	public Collection<Vote> getVotes() {
		return votes;
	}

	public void setVotes(Collection<Vote> votes) {
		this.votes = votes;
	}

}

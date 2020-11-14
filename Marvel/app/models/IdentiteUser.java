package models;

import play.data.validation.Required;
import javax.persistence.Entity;

@Entity
public class IdentiteUser {

	@Required
	public String login;
	
	@Required 
	public String password;
}

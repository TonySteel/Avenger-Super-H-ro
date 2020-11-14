package models.SHIELD;

public class Incident {
	
	private int id;
	private String titre;
	private boolean suivi;
	private String adresse;
	private String codePostal;
	private String ville;
	
	
	public Incident(int id) {
		this.setId(id);
		//bloc SQL a rajouter
	}
	
	public Incident(int id, String titre, boolean suivi, String adresse, String codePostal, String ville) {
		super();
		this.setId(id);
		this.titre = titre;
		this.suivi = suivi;
		this.adresse = adresse;
		this.codePostal = codePostal;
		this.ville = ville;
	}
	public Incident(String titre, boolean suivi, String adresse, String codePostal, String ville) {
		super();
		this.titre = titre;
		this.suivi = suivi;
		this.adresse = adresse;
		this.codePostal = codePostal;
		this.ville = ville;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public boolean isSuivi() {
		return suivi;
	}
	public void setSuivi(boolean suivi) {
		this.suivi = suivi;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getCodePostal() {
		return codePostal;
	}
	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public void CreerIncident() {
		
	}
	
	public void SupprimerIncident() {
		
	}
	
	public Incident[] ListerIncident() {
		return null;
	}

}

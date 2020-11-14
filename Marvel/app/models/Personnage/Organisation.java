package models.Personnage;

public class Organisation {

	private int id;
	private String nom;
	private String adresseSiege;
	private String codePostalSiege;
	private String villeSiege;
	private Civil dirigeant;
	
	private int nbIncidentsDeclarer;
	

	public Organisation(String nom, String adresseSiege, String codePostalSiege, String villeSiege, Civil dirigeant,
			int nbIncidentsDeclarer) {
		this.nom = nom;
		this.adresseSiege = adresseSiege;
		this.codePostalSiege = codePostalSiege;
		this.villeSiege = villeSiege;
		this.dirigeant = dirigeant;
		this.nbIncidentsDeclarer = nbIncidentsDeclarer;
	}
	
	public Organisation() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getAdresseSiege() {
		return adresseSiege;
	}

	public void setAdresseSiege(String adresseSiege) {
		this.adresseSiege = adresseSiege;
	}

	public String getCodePostalSiege() {
		return codePostalSiege;
	}

	public void setCodePostalSiege(String codePostalSiege) {
		this.codePostalSiege = codePostalSiege;
	}

	public String getVilleSiege() {
		return villeSiege;
	}

	public void setVilleSiege(String villeSiege) {
		this.villeSiege = villeSiege;
	}

	public Civil getDirigeant() {
		return dirigeant;
	}

	public void setDirigeant(Civil dirigeant) {
		this.dirigeant = dirigeant;
	}

	public int getNbIncidentsDeclarer() {
		return nbIncidentsDeclarer;
	}

	public void setNbIncidentsDeclarer(int nbIncidentsDeclarer) {
		this.nbIncidentsDeclarer = nbIncidentsDeclarer;
	}
	
}

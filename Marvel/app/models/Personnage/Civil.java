package models.Personnage;

import java.util.Date;

public class Civil {

	public Civil() {}
	
	protected int id;
	protected String nom;
	protected String prenom;
	protected String civiliter;
	protected String nationalite;
	protected Date dateNaissance;
	protected Date dateDeces;
	protected String commentaire;
	
	private int nbIncidentsDeclarer;

	
	
	public Civil(String nom, String prenom, String civiliter, String nationalite, Date dateNaissance,
			String commentaire, Date dateDeces) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.civiliter = civiliter;
		this.nationalite = nationalite;
		this.dateNaissance = dateNaissance;
		this.dateDeces = dateDeces;
		this.commentaire = commentaire;
	}
	

	public Civil(String nom, String prenom, String civiliter, String nationalite, Date dateNaissance,
			String commentaire) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.civiliter = civiliter;
		this.nationalite = nationalite;
		this.dateNaissance = dateNaissance;
		this.commentaire = commentaire;
	}

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

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getCiviliter() {
		return civiliter;
	}

	public void setCiviliter(String civiliter) {
		this.civiliter = civiliter;
	}

	public String getNationalite() {
		return nationalite;
	}

	public void setNationalite(String nationalite) {
		this.nationalite = nationalite;
	}

	public Date getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public Date getDateDeces() {
		return dateDeces;
	}

	public void setDateDeces(Date dateDeces) {
		this.dateDeces = dateDeces;
	}

	public String getCommentaire() {
		return commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

	public int getNbIncidentsDeclarer() {
		return nbIncidentsDeclarer;
	}

	public void setNbIncidentsDeclarer(int nbIncidentsDeclarer) {
		this.nbIncidentsDeclarer = nbIncidentsDeclarer;
	}
	
}

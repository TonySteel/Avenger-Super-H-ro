package models.SHIELD;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.sql.Statement;

import models.outils.Connexion;

public class Mission {
	private int id;
	private int gravite;
	private int urgence;
	
	private String nature;
	private String titre;
	private Date dateDebut;
	private Date dateFin;
	private String information;
	
	
	public Mission(int id) {
		super();
		this.id = id;
	}
	public Mission(int gravite, int urgence, String nature, String titre, Date dateDebut, Date dateFin,
			String information) {
		super();
		this.gravite = gravite;
		this.urgence = urgence;
		this.nature = nature;
		this.titre = titre;
		this.dateDebut = dateDebut;
		this.dateFin = dateFin;
		this.information = information;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getGravite() {
		return gravite;
	}
	public void setGravite(int gravite) {
		this.gravite = gravite;
	}
	public int getUrgence() {
		return urgence;
	}
	public void setUrgence(int urgence) {
		this.urgence = urgence;
	}
	public String getNature() {
		return nature;
	}
	public void setNature(String nature) {
		this.nature = nature;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public Date getDateDebut() {
		return dateDebut;
	}
	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}
	public Date getDateFin() {
		return dateFin;
	}
	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	
	private void Enregistrer()
	{
		SimpleDateFormat formater = null;
		formater = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Connection conn = Connexion.ConnectSHILD();
		Statement state=null;
		ResultSet result=null;
		try {			
			state = conn.createStatement();
			result = state.executeQuery("insert into tmission (nature,titre,DateDebutMission,DateFinMission,infoCommentaire)values('"
					+this.nature+"','"
					+this.titre+"','"
					+formater.format(this.dateDebut)+"','"
					+formater.format(this.dateFin)+"','"
					+this.information+"')");
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	
}

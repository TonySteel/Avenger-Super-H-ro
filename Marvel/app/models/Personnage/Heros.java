package models.Personnage;

import java.util.Date;

public class Heros extends Super {
	
	private int score;

	public Heros(String nom, String prenom, String civiliter, String nationalite, Date dateNaissance,
			String commentaire, String surnom, String pouvoir, String pointFaible) {
		super(nom, prenom, civiliter, nationalite, dateNaissance, commentaire, surnom, pouvoir, pointFaible);
		this.score=0;
	}
	
	public Heros(String nom, String prenom, String civiliter, String nationalite, Date dateNaissance,
			String commentaire, String surnom, String pouvoir, String pointFaible,int score) {
		super(nom, prenom, civiliter, nationalite, dateNaissance, commentaire, surnom, pouvoir, pointFaible);
		this.score=score;
	}
	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
	public void ClasserIncident()
	{
		
	}
	
	public void CreerMission()
	{
		
	}
	
	public void LireMission()
	{
		
	}
	
	public void ClasserMission()
	{
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

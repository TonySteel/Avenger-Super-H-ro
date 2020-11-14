package models.Personnage;

import java.util.Date;

public class Vilain extends Super{

	private int degres;
	
	public Vilain(int degres, String Surnom) {
		super(Surnom);
		this.degres = degres;
	}

	public Vilain(String nom, String prenom, String civiliter, String nationalite, Date dateNaissance,
			String commentaire,String surnom,String pouvoir,String pointFaible,int degres) {
		super(nom,prenom,civiliter,nationalite,dateNaissance,commentaire,surnom,pouvoir,pointFaible);
		this.degres=degres;
	}
	
	public int getDegres() {
		return degres;
	}

	public void setDegres(int degres) {
		this.degres = degres;
	}
}

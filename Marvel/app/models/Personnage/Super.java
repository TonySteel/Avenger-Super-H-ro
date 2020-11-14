package models.Personnage;

import java.util.Date;

public abstract class Super extends Civil{
	
	protected String surnom;
	protected String pouvoir;
	protected String pointFaible;
	
	protected Super(String surnom) {
		this.surnom=surnom;
	}
	
	protected Super(String nom, String prenom, String civiliter, String nationalite, Date dateNaissance,
			String commentaire,String surnom,String pouvoir,String pointFaible) {
		super(nom,prenom,civiliter,nationalite,dateNaissance,commentaire);
		this.surnom=surnom;
		this.pouvoir=pouvoir;
		this.pointFaible=pointFaible;
	}
}

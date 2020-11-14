package models.Personnage;

import java.sql.Connection;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;

import models.outils.Connexion;

public class Compte {

	private int id;
	private String username;
	private String MDP;
	private int Role;
	
	public Compte(String username, String mDP, int role) {
		super();
		this.username = username;
		MDP = mDP;
		Role = role;
		
		Connection conn = Connexion.ConnectSHILD();
		Statement state=null;
		ResultSet result=null;
		try {			
			state =  (Statement) conn.createStatement();
			result = state.executeQuery("insert into s_identifier(");
		}catch (Exception e) {
			
		}
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMDP() {
		return MDP;
	}
	public void setMDP(String mDP) {
		MDP = mDP;
	}
	public int getRole() {
		return Role;
	}
	public void setRole(int role) {
		Role = role;
	}
	
	public void BannirCivil() {
		
	}
	
	public void BannirOrganisation() {
		
	}
	
	public Organisation[] ListerOrganisation() {
		return null;
	}
}

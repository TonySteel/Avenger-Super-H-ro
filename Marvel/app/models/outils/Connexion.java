package models.outils;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import java.sql.Connection;
import java.sql.Statement;

public class Connexion {
	public static String driver="com.mysql.cj.jdbc.Driver";
	public static String URL="jdbc:mysql://localhost/avenger?serverTimezone=EST5EDT";
	public static String  USER="SHILD";
	public static String  PWD="@SHILD1212";
	
	  
	public static Connection ConnectSHILD()
	{
		try {

			  Connection conn = DriverManager.getConnection(URL, USER, PWD);
			  System.out.println(conn);
			  return conn;
			     
			} catch (Exception e) {
			  e.printStackTrace();
			  return null;
			} 
	}
	
	
	public static boolean ConnectUser(String login, String mdp)
	{
		SimpleDateFormat formater = null;
		formater = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Connection conn = Connexion.ConnectSHILD();	
			try {
				Statement state = conn.createStatement();
				ResultSet result = state.executeQuery("SELECT CODECIVILE from s_identifier WHERE LOGINUSER ='"+login+"' AND LOGINPWD ='"+mdp+"' ");
				if(result.next())
				{
					return true;
				}
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		return false;
		//redirect(identite.index);
	}
}

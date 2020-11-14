package controllers;

import play.*;
import play.mvc.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.*;

import models.*;

public class Application extends Controller {

    public static void index() {
        render();
    }

    /*public static int Connexion()
    {
        Connection conn = DriverManager.getConnection("test","test");
        var statement = conn.createStatement();
        var resultSet = statement.executeQuery("SELECT COUNT(*) FROM T_USER WHERE LoginUser , PWDUser");
        int validconnexion = resultSet.fetch();

        if(validconnexion == 0)
        {
            redirect(Application.index);
        }
        else if(validconnexion == 1)
        {
            redirect(incident.index);
        }
        return 0;
    }*/
}
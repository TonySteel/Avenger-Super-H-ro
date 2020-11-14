package controllers;

import models.IdentiteUser;
import models.outils.Connexion;
import play.data.validation.Valid;
import play.mvc.Controller;

public class Identite extends Controller {

	
    public static void index(@Valid IdentiteUser identite ) {
    	/*System.out.println(identite);
    	
    	if(validation.hasErrors())
    	{
    		params.flash();
    		validation.keep();
    		redirect("Application.index");
    	}
    	if(Connexion.ConnectUser("Emoniak","ed60fdd1bcfb3f747171d305f8ff9d3ead854149")) {
    		render();
    	}
        redirect("Application.index");*/
        render();
    }

    public static void create() {
        render();
    }

    public static void showCitoyen() {
        render();
    }

    public static void showAdvenger() {
        render();
    }

    public static void showEnnemi() {
        render();
    }
    

}
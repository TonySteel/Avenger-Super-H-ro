package controllers;

import play.*;
import play.mvc.*;
import java.util.*;
import models.*;

public class Incident extends Controller {

    public static void index()
    {
        //List<Incident> incidents = Incident.findAll();
        render();
    }

    public static void create() {
        render();
    }

    public static void show() {
        render();
    }

}
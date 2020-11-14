/***********************************************************************
 * Module:  Mission.java
 * Author:  User
 * Purpose: Defines the Class Mission
 ***********************************************************************/

import java.util.*;

/** @pdOid 23bd460c-1aed-4948-950d-f8d76dbadd7e */
public class Mission {
   /** @pdOid b9da1776-b393-49df-9515-67ee31fad51a */
   private int id;
   /** @pdOid 46f56677-05d9-470d-838f-1d1788683ef1 */
   private String titre;
   /** @pdOid d18e497d-c921-45f9-a190-341042119488 */
   private Date dateDebut;
   /** @pdOid e7e2f4ce-3cbd-465b-b7da-9f0935bd7a85 */
   private Date dateFin;
   /** @pdOid 49760f5b-c403-4741-9b90-b909cf4e6fe3 */
   private String adresseDebut;
   /** @pdOid 8794503a-0881-4c25-acef-16bc2fc57d3f */
   private String adresseFin;
   /** @pdOid bc70bc10-2e53-4e8d-99b4-2f1246728233 */
   private String infoComplementaire;
   /** @pdOid 29f25f65-ef10-4e0e-bc1a-7fdc5b2a8ef6 */
   private int niveauGravite;
   /** @pdOid 91e4ef28-7eda-4899-bb4c-ca0126f61e36 */
   private int niveauUrgence;
   /** @pdOid f22cb301-cfd0-4b13-b0aa-56b9d10d9742 */
   private String nature;
   
   /** @pdRoleInfo migr=no name=Incident assc=association3 coll=java.util.Collection impl=java.util.HashSet mult=0..* */
   public java.util.Collection<Incident> incident;
   
   /** @pdOid 9dba3710-5362-4954-91fe-f90bea3cf081 */
   public void creerMission() {
      // TODO: implement
   }
   
   /** @pdOid 1b026285-227e-4390-abaf-adb8b5a6d754 */
   public void supprimerMission() {
      // TODO: implement
   }
   
   /** @pdOid 7033b6ef-e4ae-4424-9641-3355d3e74cf0 */
   public void lireMission() {
      // TODO: implement
   }
   
   /** @pdOid ccca4d27-5cf0-42aa-9468-fbf91148129c */
   public Mission[] listerMissions() {
      // TODO: implement
      return null;
   }
   
   
   /** @pdGenerated default getter */
   public java.util.Collection<Incident> getIncident() {
      if (incident == null)
         incident = new java.util.HashSet<Incident>();
      return incident;
   }
   
   /** @pdGenerated default iterator getter */
   public java.util.Iterator getIteratorIncident() {
      if (incident == null)
         incident = new java.util.HashSet<Incident>();
      return incident.iterator();
   }
   
   /** @pdGenerated default setter
     * @param newIncident */
   public void setIncident(java.util.Collection<Incident> newIncident) {
      removeAllIncident();
      for (java.util.Iterator iter = newIncident.iterator(); iter.hasNext();)
         addIncident((Incident)iter.next());
   }
   
   /** @pdGenerated default add
     * @param newIncident */
   public void addIncident(Incident newIncident) {
      if (newIncident == null)
         return;
      if (this.incident == null)
         this.incident = new java.util.HashSet<Incident>();
      if (!this.incident.contains(newIncident))
         this.incident.add(newIncident);
   }
   
   /** @pdGenerated default remove
     * @param oldIncident */
   public void removeIncident(Incident oldIncident) {
      if (oldIncident == null)
         return;
      if (this.incident != null)
         if (this.incident.contains(oldIncident))
            this.incident.remove(oldIncident);
   }
   
   /** @pdGenerated default removeAll */
   public void removeAllIncident() {
      if (incident != null)
         incident.clear();
   }

}
/***********************************************************************
 * Module:  Incident.java
 * Author:  User
 * Purpose: Defines the Class Incident
 ***********************************************************************/

import java.util.*;

/** @pdOid 61bd3587-40c3-4bb8-ac09-4cc964d57a8a */
public class Incident {
   /** @pdOid 22086d4c-686f-4b11-8e7a-df4ce27663b9 */
   private int id;
   /** @pdOid 52ceec07-a7c2-4b51-a6da-fe26151a2dc9 */
   private String titre;
   /** @pdOid 857d9e0f-cc77-47e3-a645-919c9396b881 */
   private boolean suivi;
   /** @pdOid a836addb-9dee-40a1-bf7e-6b95e02da2eb */
   private String adresse;
   /** @pdOid b03f62d4-8eb9-46af-8e5e-d4ede50e19d1 */
   private String description;
   
   /** @pdRoleInfo migr=no name=Compte assc=association8 coll=java.util.Collection impl=java.util.HashSet mult=0..* */
   public java.util.Collection<Compte> compte;
   
   /** @pdOid 6e32fcc8-3407-4a48-9623-5319e2f6ca2f */
   public void creerIncident() {
      // TODO: implement
   }
   
   /** @pdOid 582dcf72-c90e-4cb6-a5b1-cacdf156e346 */
   public void supprimerIncident() {
      // TODO: implement
   }
   
   /** @pdOid 6e9f70c0-98ed-43cd-add6-332231326fbc */
   public void lireIncident() {
      // TODO: implement
   }
   
   /** @pdOid 6ceeeed1-4442-4115-b7f4-e9d5f67fc76f */
   public Incident[] listerIncidents() {
      // TODO: implement
      return null;
   }
   
   
   /** @pdGenerated default getter */
   public java.util.Collection<Compte> getCompte() {
      if (compte == null)
         compte = new java.util.HashSet<Compte>();
      return compte;
   }
   
   /** @pdGenerated default iterator getter */
   public java.util.Iterator getIteratorCompte() {
      if (compte == null)
         compte = new java.util.HashSet<Compte>();
      return compte.iterator();
   }
   
   /** @pdGenerated default setter
     * @param newCompte */
   public void setCompte(java.util.Collection<Compte> newCompte) {
      removeAllCompte();
      for (java.util.Iterator iter = newCompte.iterator(); iter.hasNext();)
         addCompte((Compte)iter.next());
   }
   
   /** @pdGenerated default add
     * @param newCompte */
   public void addCompte(Compte newCompte) {
      if (newCompte == null)
         return;
      if (this.compte == null)
         this.compte = new java.util.HashSet<Compte>();
      if (!this.compte.contains(newCompte))
         this.compte.add(newCompte);
   }
   
   /** @pdGenerated default remove
     * @param oldCompte */
   public void removeCompte(Compte oldCompte) {
      if (oldCompte == null)
         return;
      if (this.compte != null)
         if (this.compte.contains(oldCompte))
            this.compte.remove(oldCompte);
   }
   
   /** @pdGenerated default removeAll */
   public void removeAllCompte() {
      if (compte != null)
         compte.clear();
   }

}
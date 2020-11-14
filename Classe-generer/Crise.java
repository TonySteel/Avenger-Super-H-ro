/***********************************************************************
 * Module:  Crise.java
 * Author:  User
 * Purpose: Defines the Class Crise
 ***********************************************************************/

import java.util.*;

/** @pdOid 21b5eb2d-d1f5-4004-a688-ee4b24446257 */
public class Crise {
   /** @pdOid 587de877-8fc0-46df-aa2b-88348ab32282 */
   private int id;
   /** @pdOid 71ea763e-76bc-42f3-8736-909d5b073fb6 */
   private String titre;
   /** @pdOid 2a5d8555-9e7e-4294-bfd9-305856197747 */
   private String description;
   /** @pdOid 2690c370-30c2-4165-ad17-d3dd61fa61d5 */
   private String nature;
   
   /** @pdRoleInfo migr=no name=Rapport assc=association10 coll=java.util.Collection impl=java.util.HashSet mult=0..* type=Composition */
   public java.util.Collection<Rapport> rapport;
   
   /** @pdOid c10b051d-2292-42d4-98fb-ba01751c78c5 */
   public void creerTypeCrise() {
      // TODO: implement
   }
   
   /** @pdOid 6330017d-dbaa-4616-a40f-d9b71d012afe */
   public void creerNotification() {
      // TODO: implement
   }
   
   
   /** @pdGenerated default getter */
   public java.util.Collection<Rapport> getRapport() {
      if (rapport == null)
         rapport = new java.util.HashSet<Rapport>();
      return rapport;
   }
   
   /** @pdGenerated default iterator getter */
   public java.util.Iterator getIteratorRapport() {
      if (rapport == null)
         rapport = new java.util.HashSet<Rapport>();
      return rapport.iterator();
   }
   
   /** @pdGenerated default setter
     * @param newRapport */
   public void setRapport(java.util.Collection<Rapport> newRapport) {
      removeAllRapport();
      for (java.util.Iterator iter = newRapport.iterator(); iter.hasNext();)
         addRapport((Rapport)iter.next());
   }
   
   /** @pdGenerated default add
     * @param newRapport */
   public void addRapport(Rapport newRapport) {
      if (newRapport == null)
         return;
      if (this.rapport == null)
         this.rapport = new java.util.HashSet<Rapport>();
      if (!this.rapport.contains(newRapport))
         this.rapport.add(newRapport);
   }
   
   /** @pdGenerated default remove
     * @param oldRapport */
   public void removeRapport(Rapport oldRapport) {
      if (oldRapport == null)
         return;
      if (this.rapport != null)
         if (this.rapport.contains(oldRapport))
            this.rapport.remove(oldRapport);
   }
   
   /** @pdGenerated default removeAll */
   public void removeAllRapport() {
      if (rapport != null)
         rapport.clear();
   }

}
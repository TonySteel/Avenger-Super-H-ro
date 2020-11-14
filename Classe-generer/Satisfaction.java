/***********************************************************************
 * Module:  Satisfaction.java
 * Author:  User
 * Purpose: Defines the Class Satisfaction
 ***********************************************************************/

import java.util.*;

/** @pdOid d97f3950-132a-429d-962b-ed72691126e6 */
public class Satisfaction {
   /** @pdOid 62d74780-44c1-43c6-83c7-d03d10eafeff */
   private int id;
   /** @pdOid 44b003b7-3d95-44df-bef3-a9cad40e99a4 */
   private String titre;
   /** @pdOid 614596f1-6336-4ad6-812c-b85d57236da2 */
   private int note;
   /** @pdOid 69dbdc1e-0112-4f2e-b415-181be6aa918b */
   private String question;
   
   /** @pdRoleInfo migr=no name=Rapport assc=association9 coll=java.util.Collection impl=java.util.HashSet mult=0..* */
   public java.util.Collection<Rapport> rapport;
   
   
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
/***********************************************************************
 * Module:  Rapport.java
 * Author:  User
 * Purpose: Defines the Class Rapport
 ***********************************************************************/

import java.util.*;

/** @pdOid c79226b9-0588-41f8-86c1-883f3880fdf6 */
public class Rapport {
   /** @pdOid 190b3313-d277-4f83-9814-e3a1d9ca6f38 */
   private int id;
   /** @pdOid 310f25b2-7f12-4f3d-84b1-926417f70c87 */
   private String redacteur;
   /** @pdOid 48fddf6f-8308-4ea3-bfaa-e601f0c86f64 */
   private String description;
   
   /** @pdRoleInfo migr=no name=Mission assc=association4 coll=java.util.Collection impl=java.util.HashSet mult=0..* */
   public java.util.Collection<Mission> mission;
   
   /** @pdOid 686bfa6e-30a2-4b63-8b2f-282451632ff7 */
   public void creerRapport() {
      // TODO: implement
   }
   
   /** @pdOid 2d5081ea-c003-4cc3-97b5-d980460c9694 */
   public void lireRapport() {
      // TODO: implement
   }
   
   /** @pdOid a240f202-ce92-453e-bbd4-01f7e5f6c369 */
   public Rapport[] listerRapport() {
      // TODO: implement
      return null;
   }
   
   
   /** @pdGenerated default getter */
   public java.util.Collection<Mission> getMission() {
      if (mission == null)
         mission = new java.util.HashSet<Mission>();
      return mission;
   }
   
   /** @pdGenerated default iterator getter */
   public java.util.Iterator getIteratorMission() {
      if (mission == null)
         mission = new java.util.HashSet<Mission>();
      return mission.iterator();
   }
   
   /** @pdGenerated default setter
     * @param newMission */
   public void setMission(java.util.Collection<Mission> newMission) {
      removeAllMission();
      for (java.util.Iterator iter = newMission.iterator(); iter.hasNext();)
         addMission((Mission)iter.next());
   }
   
   /** @pdGenerated default add
     * @param newMission */
   public void addMission(Mission newMission) {
      if (newMission == null)
         return;
      if (this.mission == null)
         this.mission = new java.util.HashSet<Mission>();
      if (!this.mission.contains(newMission))
         this.mission.add(newMission);
   }
   
   /** @pdGenerated default remove
     * @param oldMission */
   public void removeMission(Mission oldMission) {
      if (oldMission == null)
         return;
      if (this.mission != null)
         if (this.mission.contains(oldMission))
            this.mission.remove(oldMission);
   }
   
   /** @pdGenerated default removeAll */
   public void removeAllMission() {
      if (mission != null)
         mission.clear();
   }

}
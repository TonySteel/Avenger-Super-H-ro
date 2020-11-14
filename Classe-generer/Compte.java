/***********************************************************************
 * Module:  Compte.java
 * Author:  User
 * Purpose: Defines the Class Compte
 ***********************************************************************/

import java.util.*;

/** @pdOid 1bd3c63d-4f08-4b8e-8bfd-019a647c1866 */
public class Compte {
   /** @pdOid 93536d1b-96ce-4f78-826b-d7f4b4245dcf */
   private int id;
   /** @pdOid 3903e903-3358-40b5-9b0d-7865e64ce347 */
   private String username;
   /** @pdOid 618fc749-31fe-40aa-8083-d1a3aa1d5998 */
   private String motDePasse;
   /** @pdOid 2ed1d230-59f0-4278-9e15-5bedd66c8dda */
   private int role;
   
   /** @pdRoleInfo migr=no name=Civil assc=association12 coll=java.util.Collection impl=java.util.HashSet mult=0..* */
   public java.util.Collection<Civil> civil;
   /** @pdRoleInfo migr=no name=Organisation assc=association13 coll=java.util.Collection impl=java.util.HashSet mult=0..* */
   public java.util.Collection<Organisation> organisation;
   
   /** @pdOid 788714e4-5b2a-4bee-909b-ccb405f7e3b8 */
   public void bannirCivil() {
      // TODO: implement
   }
   
   /** @pdOid ea2a83ef-323b-494a-82f1-b0c118bf9086 */
   public void bannirOrganisation() {
      // TODO: implement
   }
   
   /** @pdOid 3c65d492-3078-4205-bd55-790011e109ff */
   public void listerOrganisations() {
      // TODO: implement
   }
   
   
   /** @pdGenerated default getter */
   public java.util.Collection<Civil> getCivil() {
      if (civil == null)
         civil = new java.util.HashSet<Civil>();
      return civil;
   }
   
   /** @pdGenerated default iterator getter */
   public java.util.Iterator getIteratorCivil() {
      if (civil == null)
         civil = new java.util.HashSet<Civil>();
      return civil.iterator();
   }
   
   /** @pdGenerated default setter
     * @param newCivil */
   public void setCivil(java.util.Collection<Civil> newCivil) {
      removeAllCivil();
      for (java.util.Iterator iter = newCivil.iterator(); iter.hasNext();)
         addCivil((Civil)iter.next());
   }
   
   /** @pdGenerated default add
     * @param newCivil */
   public void addCivil(Civil newCivil) {
      if (newCivil == null)
         return;
      if (this.civil == null)
         this.civil = new java.util.HashSet<Civil>();
      if (!this.civil.contains(newCivil))
         this.civil.add(newCivil);
   }
   
   /** @pdGenerated default remove
     * @param oldCivil */
   public void removeCivil(Civil oldCivil) {
      if (oldCivil == null)
         return;
      if (this.civil != null)
         if (this.civil.contains(oldCivil))
            this.civil.remove(oldCivil);
   }
   
   /** @pdGenerated default removeAll */
   public void removeAllCivil() {
      if (civil != null)
         civil.clear();
   }
   /** @pdGenerated default getter */
   public java.util.Collection<Organisation> getOrganisation() {
      if (organisation == null)
         organisation = new java.util.HashSet<Organisation>();
      return organisation;
   }
   
   /** @pdGenerated default iterator getter */
   public java.util.Iterator getIteratorOrganisation() {
      if (organisation == null)
         organisation = new java.util.HashSet<Organisation>();
      return organisation.iterator();
   }
   
   /** @pdGenerated default setter
     * @param newOrganisation */
   public void setOrganisation(java.util.Collection<Organisation> newOrganisation) {
      removeAllOrganisation();
      for (java.util.Iterator iter = newOrganisation.iterator(); iter.hasNext();)
         addOrganisation((Organisation)iter.next());
   }
   
   /** @pdGenerated default add
     * @param newOrganisation */
   public void addOrganisation(Organisation newOrganisation) {
      if (newOrganisation == null)
         return;
      if (this.organisation == null)
         this.organisation = new java.util.HashSet<Organisation>();
      if (!this.organisation.contains(newOrganisation))
         this.organisation.add(newOrganisation);
   }
   
   /** @pdGenerated default remove
     * @param oldOrganisation */
   public void removeOrganisation(Organisation oldOrganisation) {
      if (oldOrganisation == null)
         return;
      if (this.organisation != null)
         if (this.organisation.contains(oldOrganisation))
            this.organisation.remove(oldOrganisation);
   }
   
   /** @pdGenerated default removeAll */
   public void removeAllOrganisation() {
      if (organisation != null)
         organisation.clear();
   }

}
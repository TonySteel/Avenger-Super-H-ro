/***********************************************************************
 * Module:  Organisation.java
 * Author:  User
 * Purpose: Defines the Class Organisation
 ***********************************************************************/

import java.util.*;

/** @pdOid 2c6812de-ab8f-4e76-b030-6520dc5ad375 */
public class Organisation {
   /** @pdOid d010fa40-e2f8-43ab-b487-a0633672b7f7 */
   private int id;
   /** @pdOid d1ddeec4-590b-4f80-a649-43d9c2d24118 */
   private String nom;
   /** @pdOid dd03bedd-9441-4889-9efc-63f7dc85f3bb */
   private String siegeSocial;
   /** @pdOid ce1877b6-c2a4-4f6c-9439-2367d2f5d16c */
   private String dirigeant;
   /** @pdOid 03e83e93-9e06-4f59-8481-7760804fa754 */
   private String commentaire;
   /** @pdOid 241e476a-0458-4f04-9d6e-d596b93663ca */
   private Date dateAjout;
   /** @pdOid 2fa236c0-0c64-4c30-9d3f-29b5beafc276 */
   private Date dateModification;
   /** @pdOid 5574280b-5843-4065-a98f-5762d81bc149 */
   private int nombreDIcidentsDeclares;
   
   /** @pdRoleInfo migr=no name=Civil assc=association1 coll=java.util.Collection impl=java.util.HashSet mult=0..* type=Composition */
   public java.util.Collection<Civil> civil;
   
   /** @pdOid 71aef4e1-223b-4681-9796-c610ceb7fa6d */
   public void creerOrganisation() {
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

}
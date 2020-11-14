/***********************************************************************
 * Module:  Litige.java
 * Author:  User
 * Purpose: Defines the Class Litige
 ***********************************************************************/

import java.util.*;

/** @pdOid be5be06c-38a0-40b9-abd0-ca4be90221e6 */
public class Litige {
   /** @pdOid 306cf1c5-aada-4be8-a1c4-d7cb8eb9cc8a */
   private int id;
   /** @pdOid 490ff744-bef4-41a5-91e9-bbfcbdf6daef */
   private String titre;
   /** @pdOid 347b80e7-3454-4ad1-8081-5b58690575e9 */
   private String description;
   /** @pdOid a87a11b9-9df9-4c74-aab4-3d601dd7a196 */
   private Date date;
   /** @pdOid f16892a4-d3a4-490c-a9a2-93be4784da68 */
   private double cout;
   /** @pdOid 98d0f284-86d3-449e-b97e-b202fca4f2a8 */
   private String photo;
   /** @pdOid 0df20774-d8ec-4cbd-bd0d-9b405dfcad02 */
   private String nature;
   
   /** @pdRoleInfo migr=no name=Crise assc=association11 coll=java.util.Collection impl=java.util.HashSet mult=0..* type=Aggregation */
   public java.util.Collection<Crise> crise;
   
   /** @pdOid 0821f0fa-0b5f-4315-a90b-5c7f45e7c391 */
   public void creerTypeLitige() {
      // TODO: implement
   }
   
   /** @pdOid 7d3005df-c948-4b08-8bbf-8732e6a1b4e7 */
   public void cloturerLitige() {
      // TODO: implement
   }
   
   
   /** @pdGenerated default getter */
   public java.util.Collection<Crise> getCrise() {
      if (crise == null)
         crise = new java.util.HashSet<Crise>();
      return crise;
   }
   
   /** @pdGenerated default iterator getter */
   public java.util.Iterator getIteratorCrise() {
      if (crise == null)
         crise = new java.util.HashSet<Crise>();
      return crise.iterator();
   }
   
   /** @pdGenerated default setter
     * @param newCrise */
   public void setCrise(java.util.Collection<Crise> newCrise) {
      removeAllCrise();
      for (java.util.Iterator iter = newCrise.iterator(); iter.hasNext();)
         addCrise((Crise)iter.next());
   }
   
   /** @pdGenerated default add
     * @param newCrise */
   public void addCrise(Crise newCrise) {
      if (newCrise == null)
         return;
      if (this.crise == null)
         this.crise = new java.util.HashSet<Crise>();
      if (!this.crise.contains(newCrise))
         this.crise.add(newCrise);
   }
   
   /** @pdGenerated default remove
     * @param oldCrise */
   public void removeCrise(Crise oldCrise) {
      if (oldCrise == null)
         return;
      if (this.crise != null)
         if (this.crise.contains(oldCrise))
            this.crise.remove(oldCrise);
   }
   
   /** @pdGenerated default removeAll */
   public void removeAllCrise() {
      if (crise != null)
         crise.clear();
   }

}
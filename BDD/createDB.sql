/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  15/04/2019 11:06:45                      */
/*==============================================================*/
/*==============================================================*/
/* Table : INCIDENT_MISSION                                     */
/*==============================================================*/
create table INCIDENT_MISSION
(
   CODEINCIDENT         int not null  comment '',
   CODEMISSION          int not null  comment '',
   primary key (CODEINCIDENT, CODEMISSION)
);

/*==============================================================*/
/* Table : LITIGE_CRISE                                         */
/*==============================================================*/
create table LITIGE_CRISE
(
   CODELITIGE           int not null  comment '',
   CODECRISE            int not null  comment '',
   HISTORIQUELTIGE      date  comment '',
   primary key (CODELITIGE, CODECRISE)
);

/*==============================================================*/
/* Table : LITIGE_REGISTRE                                      */
/*==============================================================*/
create table LITIGE_REGISTRE
(
   CODEVRAC             int not null  comment '',
   CODELITIGE           int not null  comment '',
   primary key (CODEVRAC, CODELITIGE)
);

/*==============================================================*/
/* Table : MEMBRE                                               */
/*==============================================================*/
create table MEMBRE
(
   CODECIVILE           int not null  comment '',
   CODEORGANISATION     int not null  comment '',
   ESTDIRIGENT          bool not null  comment '',
   primary key (CODECIVILE, CODEORGANISATION)
);

/*==============================================================*/
/* Table : MISSION_RAPPORT                                      */
/*==============================================================*/
create table MISSION_RAPPORT
(
   CODERAPPORT          int not null  comment '',
   CODEMISSION          int not null  comment '',
   primary key (CODERAPPORT, CODEMISSION)
);

/*==============================================================*/
/* Table : RAPPORT_CRISE                                        */
/*==============================================================*/
create table RAPPORT_CRISE
(
   CODERAPPORT          int not null  comment '',
   CODECRISE            int not null  comment '',
   HISTORIQUEDATE       date  comment '',
   primary key (CODERAPPORT, CODECRISE)
);

/*==============================================================*/
/* Table : SATISFACTION_RAPPORT                                 */
/*==============================================================*/
create table SATISFACTION_RAPPORT
(
   CODESATISFACTION     int not null  comment '',
   CODERAPPORT          int not null  comment '',
   primary key (CODESATISFACTION, CODERAPPORT)
);

/*==============================================================*/
/* Table : SATISFACTION_REGISTRE                                */
/*==============================================================*/
create table SATISFACTION_REGISTRE
(
   CODEVRAC             int not null  comment '',
   CODESATISFACTION     int not null  comment '',
   primary key (CODEVRAC, CODESATISFACTION)
);

/*==============================================================*/
/* Table : SNIVEAUGRAVITE                                       */
/*==============================================================*/
create table SNIVEAUGRAVITE
(
   CODEGRAVITE          int not null auto_increment  comment '',
   VALEURGRAVITE        int not null  comment '',
   NOMGRAVITE           varchar(32) not null  comment '',
   primary key (CODEGRAVITE)
);

/*==============================================================*/
/* Table : SNIVEAUURGENCE                                       */
/*==============================================================*/
create table SNIVEAUURGENCE
(
   CODEURGENCE          int not null auto_increment  comment '',
   NIVEAUXURGENCE       int not null  comment '',
   NATUREURGENCE        varchar(32) not null  comment '',
   primary key (CODEURGENCE)
);

/*==============================================================*/
/* Table : STYPECRISE                                           */
/*==============================================================*/
create table STYPECRISE
(
   CODETYPECRISE        int not null auto_increment  comment '',
   NOMTYPECRISE         varchar(32) not null  comment '',
   primary key (CODETYPECRISE)
);

/*==============================================================*/
/* Table : STYPELITIGE                                          */
/*==============================================================*/
create table STYPELITIGE
(
   CODETYPELITIGE       int not null auto_increment  comment '',
   NOMTYPELITIGE        varchar(32) not null  comment '',
   primary key (CODETYPELITIGE)
);

/*==============================================================*/
/* Table : S_IDENTIFIER                                         */
/*==============================================================*/
create table S_IDENTIFIER
(
   IDROLE               int not null  comment '',
   CODECIVILE           int not null  comment '',
   LOGINUSER            char(40)  comment '',
   LOGINPWD             char(40)  comment '',
   primary key (IDROLE, CODECIVILE)
);

/*==============================================================*/
/* Table : TADRESSE                                             */
/*==============================================================*/
create table TADRESSE
(
   CODEADRESSE          int not null auto_increment  comment '',
   NUMERIQUEADRESSE     varchar(64) not null  comment '',
   CODEPOSTAL           varchar(5) not null  comment '',
   VILLE                varchar(32) not null  comment '',
   primary key (CODEADRESSE)
);

/*==============================================================*/
/* Table : TCIVILE                                              */
/*==============================================================*/
create table TCIVILE
(
   CODECIVILE           int not null auto_increment  comment '',
   CODEADRESSE          int not null  comment '',
   CODESUPER            int  comment '',
   NOMCIVILE            varchar(32) not null  comment '',
   PRENOMCIVILE         varchar(32) not null  comment '',
   CIVILITERCIVILE      smallint  comment '',
   DATENAISSANCE        date not null  comment '',
   DATEDECES            date  comment '',
   COMMENTAIRECIVIL     varchar(4096)  comment '',
   DATEAJOUTCIVIL       date not null  comment '',
   DATEDERNIERMODIFCIVIL date  comment '',
   TELCIVIL             varchar(10)  comment '',
   primary key (CODECIVILE)
);

/*==============================================================*/
/* Table : TCRISE                                               */
/*==============================================================*/
create table TCRISE
(
   CODECRISE            int not null auto_increment  comment '',
   CODETYPECRISE        int not null  comment '',
   NOMCRISE             varchar(32) not null  comment '',
   DETAILCRISE          varchar(4096)  comment '',
   primary key (CODECRISE)
);

/*==============================================================*/
/* Table : TINCIDENTS                                           */
/*==============================================================*/
create table TINCIDENTS
(
   CODEINCIDENT         int not null auto_increment  comment '',
   CODECIVILE           int not null  comment '',
   CODEORGANISATION     int not null  comment '',
   CODEADRESSE          int not null  comment '',
   TITREINCIDENT        varchar(32) not null  comment '',
   DESCRIPTIONINCIDENT  varchar(4096) not null  comment '',
   SUIVIEINCIDENT       bool not null  comment '',
   primary key (CODEINCIDENT)
);

/*==============================================================*/
/* Table : TLITIGE                                              */
/*==============================================================*/
create table TLITIGE
(
   CODELITIGE           int not null auto_increment  comment '',
   CODETYPELITIGE       int not null  comment '',
   COUTLITIGE           float(8,2)  comment '',
   primary key (CODELITIGE)
);

/*==============================================================*/
/* Table : TMISSIONS                                            */
/*==============================================================*/
create table TMISSIONS
(
   CODEMISSION          int not null auto_increment  comment '',
   CODEGRAVITE          int not null  comment '',
   CODEURGENCE          int  comment '',
   NATURE               varchar(32) not null  comment '',
   TITRE                varchar(64) not null  comment '',
   DATEDEBUTMISSION     date not null  comment '',
   DATEFINMISSION       date not null  comment '',
   INFOCOMMENTAIRE      varchar(4092) not null  comment '',
   primary key (CODEMISSION)
);

/*==============================================================*/
/* Table : TORGANISATION                                        */
/*==============================================================*/
create table TORGANISATION
(
   CODEORGANISATION     int not null auto_increment  comment '',
   CODEADRESSE          int not null  comment '',
   NOMORGANISATION      varchar(32) not null  comment '',
   DATEDERNIREMODIFORGANISATION date  comment '',
   COMMENTAIREORGANISATION varchar(4096)  comment '',
   DATEJOUTORGANISATION date  comment '',
   primary key (CODEORGANISATION)
);

/*==============================================================*/
/* Table : TRAPPORT                                             */
/*==============================================================*/
create table TRAPPORT
(
   CODERAPPORT          int not null auto_increment  comment '',
   DETAIL               text not null  comment '',
   primary key (CODERAPPORT)
);

/*==============================================================*/
/* Table : TREGISTRE                                            */
/*==============================================================*/
create table TREGISTRE
(
   CODEVRAC             int not null auto_increment  comment '',
   CHEMINVRAC           text not null  comment '',
   primary key (CODEVRAC)
);

/*==============================================================*/
/* Table : TROLE                                                */
/*==============================================================*/
create table TROLE
(
   IDROLE               int not null auto_increment  comment '',
   LIBROLE              char(40)  comment '',
   primary key (IDROLE)
);

/*==============================================================*/
/* Table : TSATISFACTION                                        */
/*==============================================================*/
create table TSATISFACTION
(
   CODESATISFACTION     int not null auto_increment  comment '',
   NOTEGLOBAL           int  comment '',
   COMMENTAIRESATISFACTION varchar(4096)  comment '',
   primary key (CODESATISFACTION)
);

/*==============================================================*/
/* Table : TSUPER                                               */
/*==============================================================*/
create table TSUPER
(
   CODESUPER            int not null auto_increment  comment '',
   CODECIVILE           int not null  comment '',
   POUVOIRSUPER         varchar(32) not null  comment '',
   POINTFAIBLESUPER     varchar(32) not null  comment '',
   SCORESUPER           int not null  comment '',
   COMMENTAIRESUPER     varchar(4096)  comment '',
   primary key (CODESUPER)
);

alter table INCIDENT_MISSION add constraint FK_INCIDENT_INCIDENT__TINCIDEN foreign key (CODEINCIDENT)
      references TINCIDENTS (CODEINCIDENT) on delete restrict on update restrict;

alter table INCIDENT_MISSION add constraint FK_INCIDENT_INCIDENT__TMISSION foreign key (CODEMISSION)
      references TMISSIONS (CODEMISSION) on delete restrict on update restrict;

alter table LITIGE_CRISE add constraint FK_LITIGE_C_LITIGE_CR_TLITIGE foreign key (CODELITIGE)
      references TLITIGE (CODELITIGE) on delete restrict on update restrict;

alter table LITIGE_CRISE add constraint FK_LITIGE_C_LITIGE_CR_TCRISE foreign key (CODECRISE)
      references TCRISE (CODECRISE) on delete restrict on update restrict;

alter table LITIGE_REGISTRE add constraint FK_LITIGE_R_LITIGE_RE_TREGISTR foreign key (CODEVRAC)
      references TREGISTRE (CODEVRAC) on delete restrict on update restrict;

alter table LITIGE_REGISTRE add constraint FK_LITIGE_R_LITIGE_RE_TLITIGE foreign key (CODELITIGE)
      references TLITIGE (CODELITIGE) on delete restrict on update restrict;

alter table MEMBRE add constraint FK_MEMBRE_MEMBRE_TCIVILE foreign key (CODECIVILE)
      references TCIVILE (CODECIVILE) on delete restrict on update restrict;

alter table MEMBRE add constraint FK_MEMBRE_MEMBRE2_TORGANIS foreign key (CODEORGANISATION)
      references TORGANISATION (CODEORGANISATION) on delete restrict on update restrict;

alter table MISSION_RAPPORT add constraint FK_MISSION__MISSION_R_TRAPPORT foreign key (CODERAPPORT)
      references TRAPPORT (CODERAPPORT) on delete restrict on update restrict;

alter table MISSION_RAPPORT add constraint FK_MISSION__MISSION_R_TMISSION foreign key (CODEMISSION)
      references TMISSIONS (CODEMISSION) on delete restrict on update restrict;

alter table RAPPORT_CRISE add constraint FK_RAPPORT__RAPPORT_C_TRAPPORT foreign key (CODERAPPORT)
      references TRAPPORT (CODERAPPORT) on delete restrict on update restrict;

alter table RAPPORT_CRISE add constraint FK_RAPPORT__RAPPORT_C_TCRISE foreign key (CODECRISE)
      references TCRISE (CODECRISE) on delete restrict on update restrict;

alter table SATISFACTION_RAPPORT add constraint FK_SATISFAC_SATISFACT_TSATISFA foreign key (CODESATISFACTION)
      references TSATISFACTION (CODESATISFACTION) on delete restrict on update restrict;

alter table SATISFACTION_RAPPORT add constraint FK_SATISFAC_SATISFACT_TRAPPORT foreign key (CODERAPPORT)
      references TRAPPORT (CODERAPPORT) on delete restrict on update restrict;

alter table SATISFACTION_REGISTRE add constraint FK_SATISFAC_SATISFACT_TREGISTR foreign key (CODEVRAC)
      references TREGISTRE (CODEVRAC) on delete restrict on update restrict;

alter table SATISFACTION_REGISTRE add constraint FK_SATISFAC_SATISFACT_TSATISFA foreign key (CODESATISFACTION)
      references TSATISFACTION (CODESATISFACTION) on delete restrict on update restrict;

alter table S_IDENTIFIER add constraint FK_S_IDENTI_S_IDENTIF_TROLE foreign key (IDROLE)
      references TROLE (IDROLE) on delete restrict on update restrict;

alter table S_IDENTIFIER add constraint FK_S_IDENTI_S_IDENTIF_TCIVILE foreign key (CODECIVILE)
      references TCIVILE (CODECIVILE) on delete restrict on update restrict;

alter table TCIVILE add constraint FK_TCIVILE_ETRE2_TSUPER foreign key (CODESUPER)
      references TSUPER (CODESUPER) on delete restrict on update restrict;

alter table TCIVILE add constraint FK_TCIVILE_HABITER_TADRESSE foreign key (CODEADRESSE)
      references TADRESSE (CODEADRESSE) on delete restrict on update restrict;

alter table TCRISE add constraint FK_TCRISE_AVOIR2_STYPECRI foreign key (CODETYPECRISE)
      references STYPECRISE (CODETYPECRISE) on delete restrict on update restrict;

alter table TINCIDENTS add constraint FK_TINCIDEN_CREER_TCIVILE foreign key (CODECIVILE)
      references TCIVILE (CODECIVILE) on delete restrict on update restrict;

alter table TINCIDENTS add constraint FK_TINCIDEN_DECLARER_TORGANIS foreign key (CODEORGANISATION)
      references TORGANISATION (CODEORGANISATION) on delete restrict on update restrict;

alter table TINCIDENTS add constraint FK_TINCIDEN_LOCLISER_TADRESSE foreign key (CODEADRESSE)
      references TADRESSE (CODEADRESSE) on delete restrict on update restrict;

alter table TLITIGE add constraint FK_TLITIGE_AVOIR_STYPELIT foreign key (CODETYPELITIGE)
      references STYPELITIGE (CODETYPELITIGE) on delete restrict on update restrict;

alter table TMISSIONS add constraint FK_TMISSION_GRAVITE_M_SNIVEAUG foreign key (CODEGRAVITE)
      references SNIVEAUGRAVITE (CODEGRAVITE) on delete restrict on update restrict;

alter table TMISSIONS add constraint FK_TMISSION_URGENCE_M_SNIVEAUU foreign key (CODEURGENCE)
      references SNIVEAUURGENCE (CODEURGENCE) on delete restrict on update restrict;

alter table TORGANISATION add constraint FK_TORGANIS_SIEGER_TADRESSE foreign key (CODEADRESSE)
      references TADRESSE (CODEADRESSE) on delete restrict on update restrict;

alter table TSUPER add constraint FK_TSUPER_ETRE_TCIVILE foreign key (CODECIVILE)
      references TCIVILE (CODECIVILE) on delete restrict on update restrict;

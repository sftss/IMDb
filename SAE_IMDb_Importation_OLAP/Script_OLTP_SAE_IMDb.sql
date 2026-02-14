/*==============================================================*/
/* Nom de SGBD :  Microsoft SQL Server 2008                     */
/* Date de cr�ation :  20/01/2026 10:57:11                      */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INGENRE') and o.name = 'FK_INGENRE_INGENRE_TITLE')
alter table INGENRE
   drop constraint FK_INGENRE_INGENRE_TITLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INGENRE') and o.name = 'FK_INGENRE_INGENRE2_REF_GENR')
alter table INGENRE
   drop constraint FK_INGENRE_INGENRE2_REF_GENR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KNOWFOR') and o.name = 'FK_KNOWFOR_KNOWFOR_PERSON')
alter table KNOWFOR
   drop constraint FK_KNOWFOR_KNOWFOR_PERSON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KNOWFOR') and o.name = 'FK_KNOWFOR_KNOWFOR2_TITLE')
alter table KNOWFOR
   drop constraint FK_KNOWFOR_KNOWFOR2_TITLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KNOWFOR') and o.name = 'FK_KNOWFOR_KNOWFOR3_REF_PROF')
alter table KNOWFOR
   drop constraint FK_KNOWFOR_KNOWFOR3_REF_PROF
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TITLE') and o.name = 'FK_TITLE_IS_CATEGO_REF_TITL')
alter table TITLE
   drop constraint FK_TITLE_IS_CATEGO_REF_TITL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TITLE') and o.name = 'FK_TITLE_IS_PART_O_TITLE')
alter table TITLE
   drop constraint FK_TITLE_IS_PART_O_TITLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TITLE_AKA') and o.name = 'FK_TITLE_AK_LOCATE_REF_REGI')
alter table TITLE_AKA
   drop constraint FK_TITLE_AK_LOCATE_REF_REGI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TITLE_AKA') and o.name = 'FK_TITLE_AK_SPEAK_REF_LANG')
alter table TITLE_AKA
   drop constraint FK_TITLE_AK_SPEAK_REF_LANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TITLE_AKA') and o.name = 'FK_TITLE_AK_TRANSLATE_TITLE')
alter table TITLE_AKA
   drop constraint FK_TITLE_AK_TRANSLATE_TITLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TITLE_PRINCIPAL') and o.name = 'FK_TITLE_PR_CONCERN_TITLE')
alter table TITLE_PRINCIPAL
   drop constraint FK_TITLE_PR_CONCERN_TITLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TITLE_PRINCIPAL') and o.name = 'FK_TITLE_PR_INCARNATE_PERSON')
alter table TITLE_PRINCIPAL
   drop constraint FK_TITLE_PR_INCARNATE_PERSON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TITLE_PRINCIPAL') and o.name = 'FK_TITLE_PR_INCATEGOR_REF_CATE')
alter table TITLE_PRINCIPAL
   drop constraint FK_TITLE_PR_INCATEGOR_REF_CATE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INGENRE')
            and   name  = 'INGENRE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index INGENRE.INGENRE2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INGENRE')
            and   name  = 'INGENRE_FK'
            and   indid > 0
            and   indid < 255)
   drop index INGENRE.INGENRE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('INGENRE')
            and   type = 'U')
   drop table INGENRE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KNOWFOR')
            and   name  = 'KNOWFOR3_FK'
            and   indid > 0
            and   indid < 255)
   drop index KNOWFOR.KNOWFOR3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KNOWFOR')
            and   name  = 'KNOWFOR2_FK'
            and   indid > 0
            and   indid < 255)
   drop index KNOWFOR.KNOWFOR2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KNOWFOR')
            and   name  = 'KNOWFOR_FK'
            and   indid > 0
            and   indid < 255)
   drop index KNOWFOR.KNOWFOR_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KNOWFOR')
            and   type = 'U')
   drop table KNOWFOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PERSON')
            and   name  = 'IDX_PRIMARYNAME'
            and   indid > 0
            and   indid < 255)
   drop index PERSON.IDX_PRIMARYNAME
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PERSON')
            and   type = 'U')
   drop table PERSON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REF_CATEGORY')
            and   type = 'U')
   drop table REF_CATEGORY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REF_GENRE')
            and   type = 'U')
   drop table REF_GENRE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REF_LANGUAGE')
            and   type = 'U')
   drop table REF_LANGUAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REF_PROFESSION')
            and   type = 'U')
   drop table REF_PROFESSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REF_REGION')
            and   type = 'U')
   drop table REF_REGION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REF_TITLETYPE')
            and   type = 'U')
   drop table REF_TITLETYPE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE')
            and   name  = 'IDX_STARTYEAR'
            and   indid > 0
            and   indid < 255)
   drop index TITLE.IDX_STARTYEAR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE')
            and   name  = 'IDX_AVERAGERATING'
            and   indid > 0
            and   indid < 255)
   drop index TITLE.IDX_AVERAGERATING
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE')
            and   name  = 'IDX_ORIGINALTITLE'
            and   indid > 0
            and   indid < 255)
   drop index TITLE.IDX_ORIGINALTITLE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE')
            and   name  = 'IDX_PRIMARYTITLE'
            and   indid > 0
            and   indid < 255)
   drop index TITLE.IDX_PRIMARYTITLE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE')
            and   name  = 'IS_PART_OF_FK'
            and   indid > 0
            and   indid < 255)
   drop index TITLE.IS_PART_OF_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE')
            and   name  = 'IS_CATEGORIZED_FK'
            and   indid > 0
            and   indid < 255)
   drop index TITLE.IS_CATEGORIZED_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TITLE')
            and   type = 'U')
   drop table TITLE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE_AKA')
            and   name  = 'SPEAK_FK'
            and   indid > 0
            and   indid < 255)
   drop index TITLE_AKA.SPEAK_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE_AKA')
            and   name  = 'LOCATE_FK'
            and   indid > 0
            and   indid < 255)
   drop index TITLE_AKA.LOCATE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE_AKA')
            and   name  = 'TRANSLATE_FK'
            and   indid > 0
            and   indid < 255)
   drop index TITLE_AKA.TRANSLATE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TITLE_AKA')
            and   type = 'U')
   drop table TITLE_AKA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE_PRINCIPAL')
            and   name  = 'INCATEGORY_FK'
            and   indid > 0
            and   indid < 255)
   drop index TITLE_PRINCIPAL.INCATEGORY_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE_PRINCIPAL')
            and   name  = 'INCARNATE_FK'
            and   indid > 0
            and   indid < 255)
   drop index TITLE_PRINCIPAL.INCARNATE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TITLE_PRINCIPAL')
            and   name  = 'CONCERN_FK'
            and   indid > 0
            and   indid < 255)
   drop index TITLE_PRINCIPAL.CONCERN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TITLE_PRINCIPAL')
            and   type = 'U')
   drop table TITLE_PRINCIPAL
go

/*==============================================================*/
/* Table : INGENRE                                              */
/*==============================================================*/
create table INGENRE (
   TCONST               varchar(15)              not null,
   GENREID              numeric              not null,
   constraint PK_INGENRE primary key (TCONST, GENREID)
)
go

/*==============================================================*/
/* Index : INGENRE_FK                                           */
/*==============================================================*/
create index INGENRE_FK on INGENRE (
TCONST ASC
)
go

/*==============================================================*/
/* Index : INGENRE2_FK                                          */
/*==============================================================*/
create index INGENRE2_FK on INGENRE (
GENREID ASC
)
go

/*==============================================================*/
/* Table : KNOWFOR                                              */
/*==============================================================*/
create table KNOWFOR (
   NCONST               varchar(15)              not null,
   TCONST               varchar(15)              not null,
   PROFESSIONID         numeric              not null,
   constraint PK_KNOWFOR primary key (NCONST, TCONST, PROFESSIONID)
)
go

/*==============================================================*/
/* Index : KNOWFOR_FK                                           */
/*==============================================================*/
create index KNOWFOR_FK on KNOWFOR (
NCONST ASC
)
go

/*==============================================================*/
/* Index : KNOWFOR2_FK                                          */
/*==============================================================*/
create index KNOWFOR2_FK on KNOWFOR (
TCONST ASC
)
go

/*==============================================================*/
/* Index : KNOWFOR3_FK                                          */
/*==============================================================*/
create index KNOWFOR3_FK on KNOWFOR (
PROFESSIONID ASC
)
go

/*==============================================================*/
/* Table : PERSON                                               */
/*==============================================================*/
create table PERSON (
   NCONST               varchar(15)          not null,
   PRIMARYNAME          nvarchar(150)        null,
   BIRTHYEAR            date                 null,
   DEATHYEAR            date                 null,
   constraint PK_PERSON primary key nonclustered (NCONST)
)
go

/*==============================================================*/
/* Index : IDX_PRIMARYNAME                                      */
/*==============================================================*/
create index IDX_PRIMARYNAME on PERSON (
PRIMARYNAME ASC
)
go

/*==============================================================*/
/* Table : REF_CATEGORY                                         */
/*==============================================================*/
create table REF_CATEGORY (
   CATEGORYID           numeric              identity(1,1),
   CATEGORYLABEL        nvarchar(50)         null,
   constraint PK_REF_CATEGORY primary key nonclustered (CATEGORYID)
)
go

/*==============================================================*/
/* Table : REF_GENRE                                            */
/*==============================================================*/
create table REF_GENRE (
   GENREID              numeric              identity(1,1),
   GENRELABEL           nvarchar(50)          null,
   constraint PK_REF_GENRE primary key nonclustered (GENREID)
)
go

/*==============================================================*/
/* Table : REF_LANGUAGE                                         */
/*==============================================================*/
create table REF_LANGUAGE (
   LANGUAGEID           numeric              identity(1,1),
   LANGUAGECODE         varchar(4)           null,
   constraint PK_REF_LANGUAGE primary key nonclustered (LANGUAGEID)
)
go

/*==============================================================*/
/* Table : REF_PROFESSION                                       */
/*==============================================================*/
create table REF_PROFESSION (
   PROFESSIONID         numeric              identity(1,1),
   PROFESSIONLABEL      nvarchar(50)         null,
   constraint PK_REF_PROFESSION primary key nonclustered (PROFESSIONID)
)
go

/*==============================================================*/
/* Table : REF_REGION                                           */
/*==============================================================*/
create table REF_REGION (
   REGIONID             numeric              identity(1,1),
   REGIONCODE           varchar(4)           not null,
   constraint PK_REF_REGION primary key nonclustered (REGIONID)
)
go

/*==============================================================*/
/* Table : REF_TITLETYPE                                        */
/*==============================================================*/
create table REF_TITLETYPE (
   TITLETYPEID          numeric              identity(1,1),
   TITLETYPELABEL       nvarchar(50)         null,
   constraint PK_REF_TITLETYPE primary key nonclustered (TITLETYPEID)
)
go

/*==============================================================*/
/* Table : TITLE                                                */
/*==============================================================*/
create table TITLE (
   TCONST               varchar(15)          not null,
   TIT_TCONST           varchar(15)          null,
   TITLETYPEID          numeric              not null,
   PRIMARYTITLE         nvarchar(400)        null,
   ORIGINALTITLE        nvarchar(400)        null,
   ISADULT              bit                  null default 0,
   STARTYEAR            date              	null,
   ENDYEAR              date             	 null,
   RUNTIMEMINUTES       int                  null,
   NUMVOTES             int                  null,
   AVERAGERATING        decimal(4,1)         null,
   TITLESEASON          int                  null,
   TITLEEPISODE         int                  null,
   constraint PK_TITLE primary key nonclustered (TCONST)
)
go

/*==============================================================*/
/* Index : IS_CATEGORIZED_FK                                    */
/*==============================================================*/
create index IS_CATEGORIZED_FK on TITLE (
TITLETYPEID ASC
)
go

/*==============================================================*/
/* Index : IS_PART_OF_FK                                        */
/*==============================================================*/
create index IS_PART_OF_FK on TITLE (
TIT_TCONST ASC
)
go

/*==============================================================*/
/* Index : IDX_PRIMARYTITLE                                     */
/*==============================================================*/
create index IDX_PRIMARYTITLE on TITLE (
PRIMARYTITLE ASC
)
go

/*==============================================================*/
/* Index : IDX_ORIGINALTITLE                                    */
/*==============================================================*/
create index IDX_ORIGINALTITLE on TITLE (
ORIGINALTITLE ASC
)
go

/*==============================================================*/
/* Index : IDX_AVERAGERATING                                    */
/*==============================================================*/
create index IDX_AVERAGERATING on TITLE (
AVERAGERATING ASC
)
go

/*==============================================================*/
/* Index : IDX_STARTYEAR                                        */
/*==============================================================*/
create index IDX_STARTYEAR on TITLE (
STARTYEAR ASC
)
go

/*==============================================================*/
/* Table : TITLE_AKA                                            */
/*==============================================================*/
create table TITLE_AKA (
   AKAID                numeric              identity(1,1),
   LANGUAGEID           numeric              null,
   REGIONID             numeric              null,
   TCONST               varchar(15)          not null,
   AKAORDERING          int                  null,
   AKATITLE             nvarchar(400)        null,
   ISORIGINALTITLE      bit                  null default 0,
   constraint PK_TITLE_AKA primary key nonclustered (AKAID)
)
go

/*==============================================================*/
/* Index : TRANSLATE_FK                                         */
/*==============================================================*/
create index TRANSLATE_FK on TITLE_AKA (
TCONST ASC
)
go

/*==============================================================*/
/* Index : LOCATE_FK                                            */
/*==============================================================*/
create index LOCATE_FK on TITLE_AKA (
REGIONID ASC
)
go

/*==============================================================*/
/* Index : SPEAK_FK                                             */
/*==============================================================*/
create index SPEAK_FK on TITLE_AKA (
LANGUAGEID ASC
)
go

/*==============================================================*/
/* Table : TITLE_PRINCIPAL                                      */
/*==============================================================*/
create table TITLE_PRINCIPAL (
   TCONST               varchar(15)          not null,
   PRINCIPALORDERING    int                  not null,
   CATEGORYID           numeric              not null,
   NCONST               varchar(15)          not null,
   JOBSPECIFIC          nvarchar(200)        null,
   CHARACTERPLAYED      nvarchar(500)        null,
   constraint PK_TITLE_PRINCIPAL primary key nonclustered (TCONST, PRINCIPALORDERING)
)
go

/*==============================================================*/
/* Index : CONCERN_FK                                           */
/*==============================================================*/
create index CONCERN_FK on TITLE_PRINCIPAL (
TCONST ASC
)
go

/*==============================================================*/
/* Index : INCARNATE_FK                                         */
/*==============================================================*/
create index INCARNATE_FK on TITLE_PRINCIPAL (
NCONST ASC
)
go

/*==============================================================*/
/* Index : INCATEGORY_FK                                        */
/*==============================================================*/
create index INCATEGORY_FK on TITLE_PRINCIPAL (
CATEGORYID ASC
)
go

alter table INGENRE
   add constraint FK_INGENRE_INGENRE_TITLE foreign key (TCONST)
      references TITLE (TCONST)
go

alter table INGENRE
   add constraint FK_INGENRE_INGENRE2_REF_GENR foreign key (GENREID)
      references REF_GENRE (GENREID)
go

alter table KNOWFOR
   add constraint FK_KNOWFOR_KNOWFOR_PERSON foreign key (NCONST)
      references PERSON (NCONST)
go

alter table KNOWFOR
   add constraint FK_KNOWFOR_KNOWFOR2_TITLE foreign key (TCONST)
      references TITLE (TCONST)
go

alter table KNOWFOR
   add constraint FK_KNOWFOR_KNOWFOR3_REF_PROF foreign key (PROFESSIONID)
      references REF_PROFESSION (PROFESSIONID)
go

alter table TITLE
   add constraint FK_TITLE_IS_CATEGO_REF_TITL foreign key (TITLETYPEID)
      references REF_TITLETYPE (TITLETYPEID)
go

alter table TITLE
   add constraint FK_TITLE_IS_PART_O_TITLE foreign key (TIT_TCONST)
      references TITLE (TCONST)
go

alter table TITLE_AKA
   add constraint FK_TITLE_AK_LOCATE_REF_REGI foreign key (REGIONID)
      references REF_REGION (REGIONID)
go

alter table TITLE_AKA
   add constraint FK_TITLE_AK_SPEAK_REF_LANG foreign key (LANGUAGEID)
      references REF_LANGUAGE (LANGUAGEID)
go

alter table TITLE_AKA
   add constraint FK_TITLE_AK_TRANSLATE_TITLE foreign key (TCONST)
      references TITLE (TCONST)
go

alter table TITLE_PRINCIPAL
   add constraint FK_TITLE_PR_CONCERN_TITLE foreign key (TCONST)
      references TITLE (TCONST)
go

alter table TITLE_PRINCIPAL
   add constraint FK_TITLE_PR_INCARNATE_PERSON foreign key (NCONST)
      references PERSON (NCONST)
go

alter table TITLE_PRINCIPAL
   add constraint FK_TITLE_PR_INCATEGOR_REF_CATE foreign key (CATEGORYID)
      references REF_CATEGORY (CATEGORYID)
go

/* ================================================================================= */
/* CONTRAINTES																		 */
/* ================================================================================= */

-- libell� de profession unique
ALTER TABLE REF_PROFESSION
ADD CONSTRAINT UQ_REF_PROFESSION_LABEL UNIQUE (PROFESSIONLABEL);
GO

-- libell� de type de titre unique
ALTER TABLE REF_TITLETYPE
ADD CONSTRAINT UQ_REF_TITLETYPE_LABEL UNIQUE (TITLETYPELABEL);
GO

-- libell� de genre unique
ALTER TABLE REF_GENRE
ADD CONSTRAINT UQ_REF_GENRE_LABEL UNIQUE (GENRELABEL);
GO

-- code/libell� de r�gion unique
ALTER TABLE REF_REGION
ADD CONSTRAINT UQ_REF_REGION_CODE UNIQUE (REGIONCODE);
GO

-- code/libell� de langue unique
ALTER TABLE REF_LANGUAGE
ADD CONSTRAINT UQ_REF_LANGUAGE_CODE UNIQUE (LANGUAGECODE);
GO

/* ================================================================================= */
/* CONTRAINTES V�RIFICATION						                                     */
/* ================================================================================= */

-- 7. Contraintes sur la table TITLE (Valeurs positives)
ALTER TABLE TITLE
ADD CONSTRAINT CK_TITLE_RUNTIMEMINUTES CHECK (RUNTIMEMINUTES >= 0),
    CONSTRAINT CK_TITLE_AVERAGERATING  CHECK (AVERAGERATING >= 0),
    CONSTRAINT CK_TITLE_NUMVOTES       CHECK (NUMVOTES >= 0),
    CONSTRAINT CK_TITLE_SEASON         CHECK (TITLESEASON >= 0),
    CONSTRAINT CK_TITLE_EPISODE        CHECK (TITLEEPISODE >= 0);
GO

-- table PERSON
-- BIRTHYEAR v�rifie qu'elle n'est pas dans le futur
ALTER TABLE PERSON
ADD CONSTRAINT CK_PERSON_BIRTHYEAR_VALID CHECK (BIRTHYEAR <= GETDATE());
GO

-- DEATHYEAR v�rifie qu'elle n'est pas dans le futur
ALTER TABLE PERSON
ADD CONSTRAINT CK_PERSON_DEATHYEAR_VALID CHECK (DEATHYEAR <= GETDATE());
GO
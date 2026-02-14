/*==============================================================*/
/* Nom de SGBD :  Microsoft SQL Server 2008                     */
/* Date de création :  09/02/2026 10:38:31                      */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_FACT_CASTING') and o.name = 'FK_FACT_CASTING_CATEGORY')
alter table T_FACT_CASTING
   drop constraint FK_FACT_CASTING_CATEGORY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_FACT_CASTING') and o.name = 'FK_FACT_CASTING_PERSON')
alter table T_FACT_CASTING
   drop constraint FK_FACT_CASTING_PERSON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_FACT_CASTING') and o.name = 'FK_FACT_CASTING_PROFESSION')
alter table T_FACT_CASTING
   drop constraint FK_FACT_CASTING_PROFESSION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_FACT_CASTING') and o.name = 'FK_FACT_CASTING_TIME')
alter table T_FACT_CASTING
   drop constraint FK_FACT_CASTING_TIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_FACT_CASTING') and o.name = 'FK_FACT_CASTING_TITLE')
alter table T_FACT_CASTING
   drop constraint FK_FACT_CASTING_TITLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_FACT_MOVIE_STATS') and o.name = 'FK_FACT_STATS_LANG')
alter table T_FACT_MOVIE_STATS
   drop constraint FK_FACT_STATS_LANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_FACT_MOVIE_STATS') and o.name = 'FK_FACT_STATS_REGION')
alter table T_FACT_MOVIE_STATS
   drop constraint FK_FACT_STATS_REGION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_FACT_MOVIE_STATS') and o.name = 'FK_FACT_STATS_TIME')
alter table T_FACT_MOVIE_STATS
   drop constraint FK_FACT_STATS_TIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_FACT_MOVIE_STATS') and o.name = 'FK_FACT_STATS_TITLE')
alter table T_FACT_MOVIE_STATS
   drop constraint FK_FACT_STATS_TITLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_FACT_MOVIE_STATS') and o.name = 'FK_FACT_STATS_TYPE')
alter table T_FACT_MOVIE_STATS
   drop constraint FK_FACT_STATS_TYPE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_DIM_CATEGORY')
            and   type = 'U')
   drop table T_DIM_CATEGORY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_DIM_LANGUAGE')
            and   type = 'U')
   drop table T_DIM_LANGUAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_DIM_PERSON')
            and   type = 'U')
   drop table T_DIM_PERSON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_DIM_PROFESSION')
            and   type = 'U')
   drop table T_DIM_PROFESSION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_DIM_REGION')
            and   type = 'U')
   drop table T_DIM_REGION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_DIM_TIME')
            and   type = 'U')
   drop table T_DIM_TIME
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_DIM_TITLE')
            and   type = 'U')
   drop table T_DIM_TITLE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_DIM_TITLE_TYPE')
            and   type = 'U')
   drop table T_DIM_TITLE_TYPE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_FACT_CASTING')
            and   type = 'U')
   drop table T_FACT_CASTING
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_FACT_MOVIE_STATS')
            and   type = 'U')
   drop table T_FACT_MOVIE_STATS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_BRIDGE_GENRE') and o.name = 'FK_BRIDGE_GENRE_TITLE')
alter table T_BRIDGE_GENRE
   drop constraint FK_BRIDGE_GENRE_TITLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_BRIDGE_GENRE') and o.name = 'FK_BRIDGE_GENRE_GENRE')
alter table T_BRIDGE_GENRE
   drop constraint FK_BRIDGE_GENRE_GENRE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_BRIDGE_GENRE')
            and   type = 'U')
   drop table T_BRIDGE_GENRE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_DIM_GENRE')
            and   type = 'U')
   drop table T_DIM_GENRE
go

/*==============================================================*/
/* Table : T_DIM_CATEGORY                                       */
/*==============================================================*/
create table T_DIM_CATEGORY (
   ID_DIM_CATEGORY      int                  identity,
   CATEGORYLABEL        nvarchar(50)         null,
   constraint PK_T_DIM_CATEGORY primary key nonclustered (ID_DIM_CATEGORY)
)
go

/*==============================================================*/
/* Table : T_DIM_LANGUAGE                                       */
/*==============================================================*/
create table T_DIM_LANGUAGE (
   ID_DIM_LANGUAGE      int                  identity,
   LANGUAGECODE         varchar(10)          null,
   constraint PK_T_DIM_LANGUAGE primary key nonclustered (ID_DIM_LANGUAGE)
)
go

/*==============================================================*/
/* Table : T_DIM_PERSON                                         */
/*==============================================================*/
create table T_DIM_PERSON (
   ID_DIM_PERSON        int                  identity,
   NCONST               varchar(15)          not null,
   PRIMARYNAME          nvarchar(150)        null,
   BIRTHYEAR            date                 null,
   DEATHYEAR            date                 null,
   constraint PK_T_DIM_PERSON primary key nonclustered (ID_DIM_PERSON)
)
go

/*==============================================================*/
/* Table : T_DIM_PROFESSION                                     */
/*==============================================================*/
create table T_DIM_PROFESSION (
   ID_DIM_PROFESSION    int                  identity,
   PROFESSIONLABEL      nvarchar(50)         null,
   constraint PK_T_DIM_PROFESSION primary key nonclustered (ID_DIM_PROFESSION)
)
go

/*==============================================================*/
/* Table : T_DIM_REGION                                         */
/*==============================================================*/
create table T_DIM_REGION (
   ID_DIM_REGION        int                  identity,
   REGIONCODE           varchar(10)          null,
   constraint PK_T_DIM_REGION primary key nonclustered (ID_DIM_REGION)
)
go

/*==============================================================*/
/* Table : T_DIM_TIME                                           */
/*==============================================================*/
create table T_DIM_TIME (
   ID_DIM_TIME          int                  identity,
   FULL_DATE            date                 null,
   QUARTER              tinyint              null,
   MONTH_NUM            tinyint              null,
   DECADE               varchar(10)          null,
   CENTURY              int                  null,
   IS_BEFORE_1970       bit                  null,
   IS_BEFORE_1995       bit                  null,
   constraint PK_T_DIM_TIME primary key nonclustered (ID_DIM_TIME)
)
go

/*==============================================================*/
/* Table : T_DIM_TITLE                                          */
/*==============================================================*/
create table T_DIM_TITLE (
   ID_DIM_TITLE         int                  identity,
   TCONST               varchar(15)          not null,
   PRIMARYTITLE         nvarchar(400)        null,
   ORIGINALTITLE        nvarchar(400)        null,
   ISADULT              bit                  null,
   STARTYEAR            date                 null,
   ENDYEAR              date                 null,
   TITLESEASON          int                  null,
   TITLEEPISODE         int                  null,
   RUNTIMEMINUTES       int                  null,
   constraint PK_T_DIM_TITLE primary key nonclustered (ID_DIM_TITLE)
)
go

/*==============================================================*/
/* Table : T_DIM_TITLE_TYPE                                     */
/*==============================================================*/
create table T_DIM_TITLE_TYPE (
   ID_DIM_TITLE_TYPE    int                  identity,
   TITLETYPELABEL       nvarchar(50)         null,
   constraint PK_T_DIM_TITLE_TYPE primary key nonclustered (ID_DIM_TITLE_TYPE)
)
go

/*==============================================================*/
/* Table : T_DIM_GENRE                                          */
/*==============================================================*/
create table T_DIM_GENRE (
   ID_DIM_GENRE         int                  identity,
   GENRELABEL           nvarchar(50)         null,
   constraint PK_T_DIM_GENRE primary key nonclustered (ID_DIM_GENRE)
)
go

/*==============================================================*/
/* Table : T_BRIDGE_GENRE                                       */
/*==============================================================*/
create table T_BRIDGE_GENRE (
   ID_DIM_TITLE         int                  not null,
   ID_DIM_GENRE         int                  not null,
   constraint PK_T_BRIDGE_GENRE primary key nonclustered (ID_DIM_TITLE, ID_DIM_GENRE)
)
go

/*==============================================================*/
/* Table : T_FACT_CASTING                                       */
/*==============================================================*/
create table T_FACT_CASTING (
   ID_FACT_CASTING      bigint               identity,
   ID_DIM_TITLE         int                  not null,
   ID_DIM_PERSON        int                  not null,
   ID_DIM_CATEGORY      int                  not null,
   ID_DIM_PROFESSION    int                  not null,
   ID_DIM_TIME          int                  not null,
   PRINCIPALORDERING    int                  null,
   CHARACTERPLAYED      nvarchar(500)        null,
   constraint PK_T_FACT_CASTING primary key nonclustered (ID_FACT_CASTING)
)
go

/*==============================================================*/
/* Table : T_FACT_MOVIE_STATS                                   */
/*==============================================================*/
create table T_FACT_MOVIE_STATS (
   ID_FACT_STATS        bigint               identity,
   ID_DIM_TITLE         int                  not null,
   ID_DIM_TIME          int                  not null,
   ID_DIM_TITLE_TYPE    int                  not null,
   ID_DIM_LANGUAGE      int                  not null,
   ID_DIM_REGION        int                  not null,
   AVERAGERATING        decimal(4,1)         null,
   NUMVOTES             int                  null,
   constraint PK_T_FACT_MOVIE_STATS primary key nonclustered (ID_FACT_STATS)
)
go

alter table T_FACT_CASTING
   add constraint FK_FACT_CASTING_CATEGORY foreign key (ID_DIM_CATEGORY)
      references T_DIM_CATEGORY (ID_DIM_CATEGORY)
go

alter table T_FACT_CASTING
   add constraint FK_FACT_CASTING_PERSON foreign key (ID_DIM_PERSON)
      references T_DIM_PERSON (ID_DIM_PERSON)
go

alter table T_FACT_CASTING
   add constraint FK_FACT_CASTING_PROFESSION foreign key (ID_DIM_PROFESSION)
      references T_DIM_PROFESSION (ID_DIM_PROFESSION)
go

alter table T_FACT_CASTING
   add constraint FK_FACT_CASTING_TIME foreign key (ID_DIM_TIME)
      references T_DIM_TIME (ID_DIM_TIME)
go

alter table T_FACT_CASTING
   add constraint FK_FACT_CASTING_TITLE foreign key (ID_DIM_TITLE)
      references T_DIM_TITLE (ID_DIM_TITLE)
go

alter table T_FACT_MOVIE_STATS
   add constraint FK_FACT_STATS_LANG foreign key (ID_DIM_LANGUAGE)
      references T_DIM_LANGUAGE (ID_DIM_LANGUAGE)
go

alter table T_FACT_MOVIE_STATS
   add constraint FK_FACT_STATS_REGION foreign key (ID_DIM_REGION)
      references T_DIM_REGION (ID_DIM_REGION)
go

alter table T_FACT_MOVIE_STATS
   add constraint FK_FACT_STATS_TIME foreign key (ID_DIM_TIME)
      references T_DIM_TIME (ID_DIM_TIME)
go

alter table T_FACT_MOVIE_STATS
   add constraint FK_FACT_STATS_TITLE foreign key (ID_DIM_TITLE)
      references T_DIM_TITLE (ID_DIM_TITLE)
go

alter table T_FACT_MOVIE_STATS
   add constraint FK_FACT_STATS_TYPE foreign key (ID_DIM_TITLE_TYPE)
      references T_DIM_TITLE_TYPE (ID_DIM_TITLE_TYPE)
go

alter table T_BRIDGE_GENRE
   add constraint FK_BRIDGE_GENRE_TITLE foreign key (ID_DIM_TITLE)
      references T_DIM_TITLE (ID_DIM_TITLE)
go

alter table T_BRIDGE_GENRE
   add constraint FK_BRIDGE_GENRE_GENRE foreign key (ID_DIM_GENRE)
      references T_DIM_GENRE (ID_DIM_GENRE)
go




spool m4db-oracle.log

prompt
prompt Creating table M4ANCHOR
prompt =======================
prompt
create table M4ANCHOR
(
  AUID    VARCHAR2(100 CHAR) not null,
  GNAME   VARCHAR2(100 CHAR) not null,
  CGNAME  VARCHAR2(100 CHAR),
  ANAME   VARCHAR2(30 CHAR),
  ADESC   VARCHAR2(200 CHAR),
  LOCINFO VARCHAR2(100 CHAR)
)
;
alter table M4ANCHOR
  add constraint PK_M4ANCHOR primary key (AUID);

prompt
prompt Creating table M4ANCHORHOSTS
prompt ============================
prompt
create table M4ANCHORHOSTS
(
  AUID     VARCHAR2(100 CHAR) not null,
  HOSTNAME VARCHAR2(30 CHAR) not null
)
;
alter table M4ANCHORHOSTS
  add constraint PK_M4ANCHORHOSTS primary key (AUID, HOSTNAME);

prompt
prompt Creating table M4CATEGORY
prompt =========================
prompt
create table M4CATEGORY
(
  CATNAME   VARCHAR2(10 CHAR) not null,
  FULLNAME  VARCHAR2(30 CHAR) not null,
  LOCALNAME VARCHAR2(30 CHAR)
)
;
alter table M4CATEGORY
  add constraint PK_M4CATEGORY primary key (CATNAME);

prompt
prompt Creating table M4CATOBJECT
prompt ==========================
prompt
create table M4CATOBJECT
(
  PRODUCTID        VARCHAR2(100 CHAR) not null,
  OBJECTNAME       VARCHAR2(30 CHAR) not null,
  OBJNAMECOLS      VARCHAR2(30 CHAR),
  VALIDLINESTART   VARCHAR2(100 CHAR),
  VALIDLINEEND     VARCHAR2(100 CHAR),
  RESULTMODE       NUMBER(10),
  COLGAP           VARCHAR2(10 CHAR),
  CATNAME          VARCHAR2(10 CHAR) not null,
  OBJECTTYPE       NUMBER(10),
  DEFAULTSCRIPT    VARCHAR2(1000 CHAR),
  FLUSHINTERVAL    NUMBER(10) default '5',
  OUTPUTREMAINDAYS NUMBER(10),
  THRESHOLDSCRIPT  VARCHAR2(200 CHAR),
  DANGERSCRIPT     VARCHAR2(200 CHAR),
  CHECKNORMAL      VARCHAR2(200 CHAR),
  EXPECTROW        VARCHAR2(30 CHAR)
)
;
alter table M4CATOBJECT
  add constraint PK_M4CATOBJECT primary key (PRODUCTID, OBJECTNAME);

prompt
prompt Creating table M4CATOBJECTITEM
prompt ==============================
prompt
create table M4CATOBJECTITEM
(
  PRODUCTID   VARCHAR2(100 CHAR) not null,
  OBJECTNAME  VARCHAR2(30 CHAR) not null,
  ITEMNAME    VARCHAR2(20 CHAR) not null,
  CATNAME     VARCHAR2(10 CHAR) not null,
  COLNAME     VARCHAR2(30 CHAR),
  VALUETYPE   NUMBER(10),
  CHECKNORMAL VARCHAR2(200 CHAR),
  CHECKWARN   VARCHAR2(200 CHAR),
  CHECKDANGER VARCHAR2(200 CHAR),
  COLLECTFUN  VARCHAR2(10 CHAR)
)
;
alter table M4CATOBJECTITEM
  add constraint PK_M4CATOBJECTITEM primary key (PRODUCTID, OBJECTNAME, ITEMNAME);

prompt
prompt Creating table M4CATPRODUCT
prompt ===========================
prompt
create table M4CATPRODUCT
(
  CATNAME       VARCHAR2(10 CHAR) not null,
  VENDOR        VARCHAR2(30 CHAR) not null,
  PRODUCTNAME   VARCHAR2(100 CHAR) not null,
  PRODUCTID     VARCHAR2(100 CHAR) not null,
  DEFAULTDRIVER VARCHAR2(100 CHAR),
  DEFAULTURL    VARCHAR2(100 CHAR)
)
;
alter table M4CATPRODUCT
  add constraint PK_M4CATPRODUCT primary key (PRODUCTID);

prompt
prompt Creating table M4CONNECTMODE
prompt ============================
prompt
create table M4CONNECTMODE
(
  CONNECTMODE  VARCHAR2(10 CHAR) not null,
  IMPLCLASS    VARCHAR2(200 CHAR) not null,
  DEFAULTPORT  NUMBER(10),
  CATOGARYLIST VARCHAR2(100 CHAR),
  SCRIPTCLASS  VARCHAR2(200) not null,
  PARSECLASS   VARCHAR2(200) NOT NULL,
  USERNAMECOLINFO VARCHAR2(100),
  PASSWORDCOLINFO VARCHAR2(100),
  URLCOLINFO     VARCHAR2(100),
  SNAMECOLINFO VARCHAR2(100)
)
;
alter table M4CONNECTMODE
  add constraint PK_M4CONNECTMODE primary key (CONNECTMODE);

prompt
prompt Creating table M4DEFAULTPROPS
prompt =============================
prompt
create table M4DEFAULTPROPS
(
  PROPNAME VARCHAR2(100 CHAR) not null,
  DFTVALUE VARCHAR2(100 CHAR),
  VTYPE    VARCHAR2(30 CHAR)
)
;
alter table M4DEFAULTPROPS
  add constraint PK_M4DEFAULTPROPS primary key (PROPNAME);

prompt
prompt Creating table M4GRAPH
prompt ======================
prompt
create table M4GRAPH
(
  GNAME    VARCHAR2(100 CHAR) not null,
  GTYPE    NUMBER(10) not null,
  PNAME    VARCHAR2(100 CHAR),
  BGIMAGE  BLOB,
  LOCINFO  VARCHAR2(100 CHAR),
  BGWIDTH  VARCHAR2(9 CHAR),
  BGHEIGHT VARCHAR2(9 CHAR),
  SHOWZOOM VARCHAR2(9 CHAR)
)
;
alter table M4GRAPH
  add constraint PK_M4GRAPH primary key (GNAME);

prompt
prompt Creating table M4GROUP
prompt ======================
prompt
create table M4GROUP
(
  GROUPNAME    VARCHAR2(30 CHAR) not null,
  CATNAME      VARCHAR2(10 CHAR) not null,
  CATCONDITION VARCHAR2(100 CHAR),
  EXECUTEMODE  NUMBER(10),
  PARALLELMODE NUMBER(10),
  DESCRIPTION  VARCHAR2(100 CHAR)
)
;
alter table M4GROUP
  add constraint PK_M4GROUP primary key (GROUPNAME);

prompt
prompt Creating table M4GROUPMEMBER
prompt ============================
prompt
create table M4GROUPMEMBER
(
  GROUPNAME    VARCHAR2(30 CHAR) not null,
  HOSTNAME     VARCHAR2(30 CHAR) not null,
  GROUPROLE    NUMBER(10) default '1',
  SORTID       NUMBER(10),
  CONDITIONEXP VARCHAR2(100 CHAR)
)
;
alter table M4GROUPMEMBER
  add constraint PK_M4GROUPMEMBER primary key (GROUPNAME, HOSTNAME);

prompt
prompt Creating table M4HOSTINFO
prompt =========================
prompt
create table M4HOSTINFO
(
  HOSTNAME      VARCHAR2(30 CHAR) not null,
  CATNAME       VARCHAR2(10 CHAR) not null,
  PRODUCTID     VARCHAR2(100 CHAR) not null,
  HOSTIP        VARCHAR2(30 CHAR) not null,
  HOSTPORT      NUMBER(10),
  PROMPTSTR     VARCHAR2(30 CHAR),
  AGENTPORT     NUMBER(10),
  DEFAULTLOGDIR VARCHAR2(100 CHAR) default '/tmp',
  USERNAME      VARCHAR2(30 CHAR),
  PASSWORD      VARCHAR2(60 CHAR),
  CONNECTMODE   VARCHAR2(10 CHAR),
  USEEXPECT     NUMBER(10) default '1',
  SID           VARCHAR2(20 CHAR),
  SNAME         VARCHAR2(20 CHAR),
  LOGINROLE     VARCHAR2(10 CHAR),
  URL           VARCHAR2(100 CHAR),
  DESCRIPTION   VARCHAR2(100 CHAR),
  STATUS        NUMBER(10) default '1'
)
;
alter table M4HOSTINFO
  add constraint PK_M4HOSTINFO primary key (HOSTNAME);

prompt
prompt Creating table M4HOSTOBJECT
prompt ===========================
prompt
create table M4HOSTOBJECT
(
  HOSTNAME         VARCHAR2(30 CHAR) not null,
  OBJECTNAME       VARCHAR2(30 CHAR) not null,
  OBJNAMECOLS      VARCHAR2(30 CHAR),
  VALIDLINESTART   VARCHAR2(100 CHAR),
  VALIDLINEEND     VARCHAR2(100 CHAR),
  RESULTMODE       NUMBER(10),
  COLGAP           VARCHAR2(10 CHAR),
  SPECSCRIPT       VARCHAR2(1000 CHAR),
  FLUSHINTERVAL    NUMBER(10) default '5',
  OUTPUTREMAINDAYS NUMBER(10),
  CHECKNORMAL      VARCHAR2(200 CHAR),
  CHECKWARN        VARCHAR2(200 CHAR),
  CHECKDANGER      VARCHAR2(200 CHAR),
  STATUS           NUMBER(10) default '1',
  OBJECTTYPE       NUMBER(10),
  EXPECTROW        VARCHAR2(30 CHAR)
)
;
alter table M4HOSTOBJECT
  add constraint PK_M4HOSTOBJECT primary key (HOSTNAME, OBJECTNAME);

prompt
prompt Creating table M4HOSTOBJECTITEM
prompt ===============================
prompt
create table M4HOSTOBJECTITEM
(
  HOSTNAME    VARCHAR2(30 CHAR) not null,
  OBJECTNAME  VARCHAR2(30 CHAR) not null,
  ITEMNAME    VARCHAR2(30 CHAR) not null,
  COLNAME     VARCHAR2(30 CHAR),
  CHECKNORMAL VARCHAR2(200 CHAR),
  CHECKWARN   VARCHAR2(200 CHAR),
  CHECKDANGER VARCHAR2(200 CHAR),
  COLLECTFUN  VARCHAR2(10 CHAR),
  VALUETYPE   NUMBER(10)
)
;
alter table M4HOSTOBJECTITEM
  add constraint PK_M4HOSTOBJECTITEM primary key (HOSTNAME, OBJECTNAME, ITEMNAME);

prompt
prompt Creating table M4HOSTPROPS
prompt ==========================
prompt
create table M4HOSTPROPS
(
  HOSTNAME  VARCHAR2(30 CHAR) not null,
  PROPNAME  VARCHAR2(100 CHAR) not null,
  PROPVALUE VARCHAR2(200 CHAR) not null,
  SHOWORDER NUMBER(10)
)
;
alter table M4HOSTPROPS
  add constraint PK_M4HOSTPROPS primary key (HOSTNAME, PROPNAME);

prompt
prompt Creating table M4MIB
prompt ====================
prompt
create table M4MIB
(
  MIBNAME VARCHAR2(30 CHAR) not null,
  MIBDESC BLOB,
  LOADSEQ NUMBER(10) default '1'
)
;
alter table M4MIB
  add constraint PK_M4MIB primary key (MIBNAME);

prompt
prompt Creating table M4MONITORCONFIG
prompt ==============================
prompt
create table M4MONITORCONFIG
(
  MONITORID     VARCHAR2(30) default 'default' not null,
  HOSTIP        VARCHAR2(30) default '127.0.0.1' not null,
  PORT          INTEGER default 7511 not null,
  ALLOWTAKEOVER INTEGER,
  TAKEOVERID    INTEGER,
  MINTIMEOUT    INTEGER default 10 not null,
  LASTACTIVE    DATE,
  ACTUALTAKEID  INTEGER,
  TAKEOVERTIME  DATE,
  STATUS        INTEGER
)
;
alter table M4MONITORCONFIG
  add constraint PK_M4MONITORCONFIG primary key (MONITORID);

prompt
prompt Creating table M4OBJECT
prompt =======================
prompt
create table M4OBJECT
(
  OBJECTNAME       VARCHAR2(30 CHAR) not null,
  OBJNAMECOLS      VARCHAR2(30 CHAR),
  VALIDLINESTART   VARCHAR2(100 CHAR),
  VALIDLINEEND     VARCHAR2(100 CHAR),
  RESULTMODE       NUMBER(10),
  COLGAP           VARCHAR2(10 CHAR),
  CATNAME          VARCHAR2(10 CHAR) not null,
  OBJECTTYPE       NUMBER(10),
  DEFAULTSCRIPT    VARCHAR2(1000 CHAR),
  FLUSHINTERVAL    NUMBER(10) default '5',
  OUTPUTREMAINDAYS NUMBER(10),
  THRESHOLDSCRIPT  VARCHAR2(200 CHAR),
  DANGERSCRIPT     VARCHAR2(200 CHAR),
  CHECKNORMAL      VARCHAR2(200 CHAR),
  EXPECTROW        VARCHAR2(30 CHAR)
)
;
alter table M4OBJECT
  add constraint PK_M4OBJECT primary key (OBJECTNAME);

prompt
prompt Creating table M4OBJECTITEM
prompt ===========================
prompt
create table M4OBJECTITEM
(
  OBJECTNAME  VARCHAR2(30 CHAR) not null,
  ITEMNAME    VARCHAR2(20 CHAR) not null,
  CATNAME     VARCHAR2(10 CHAR) not null,
  COLNAME     VARCHAR2(30 CHAR),
  VALUETYPE   NUMBER(10),
  CHECKNORMAL VARCHAR2(200 CHAR),
  CHECKWARN   VARCHAR2(200 CHAR),
  CHECKDANGER VARCHAR2(200 CHAR),
  COLLECTFUN  VARCHAR2(10 CHAR)
)
;
alter table M4OBJECTITEM
  add constraint PK_M4OBJECTITEM primary key (OBJECTNAME, ITEMNAME);

prompt
prompt Creating table M4OUTPUTHISTORY
prompt ==============================
prompt
create table M4OUTPUTHISTORY
(
  EXECUTETIME     DATE default SYSDATE not null,
  HOSTNAME        VARCHAR2(30 CHAR) not null,
  OBJECTNAME      VARCHAR2(30 CHAR) not null,
  ORIGINALOUTPUT  CLOB,
  EVALUTIONRESULT VARCHAR2(100 CHAR),
  RESULTCODE      NUMBER(10),
  ELAPSEDTIME     NUMBER(10),
  RECENTRESULT    NUMBER(10) default '0',
  RECENTTIME      DATE
)
partition by hash ( hostname ) partitions 16
;
alter table M4OUTPUTHISTORY
  add constraint PK_M4OUTPUTHISTORY primary key (HOSTNAME, OBJECTNAME, EXECUTETIME);

prompt
prompt Creating table M4OUTPUTITEM
prompt ===========================
prompt
create table M4OUTPUTITEM
(
  EXECUTETIME     DATE default SYSDATE not null,
  HOSTNAME        VARCHAR2(30 CHAR) not null,
  OBJECTNAME      VARCHAR2(30 CHAR) not null,
  ITEMNAME        VARCHAR2(200 CHAR) not null,
  ORIGINALOUTPUT  VARCHAR2(100 CHAR),
  EVALUTIONRESULT VARCHAR2(100 CHAR),
  RESULTCODE      NUMBER(10)
)
;
alter table M4OUTPUTITEM
  add constraint PK_M4OUTPUTITEM primary key (HOSTNAME, OBJECTNAME, ITEMNAME);

prompt
prompt Creating table M4OUTPUTITEMHISTORY
prompt ==================================
prompt
create table M4OUTPUTITEMHISTORY
(
  EXECUTETIME     DATE default SYSDATE not null,
  HOSTNAME        VARCHAR2(30 CHAR) not null,
  OBJECTNAME      VARCHAR2(30 CHAR) not null,
  ITEMNAME        VARCHAR2(200 CHAR) not null,
  ORIGINALOUTPUT  VARCHAR2(100 CHAR),
  EVALUTIONRESULT VARCHAR2(100 CHAR),
  RESULTCODE      NUMBER(10)
)
partition by hash (HOSTNAME) partitions 16;
alter table M4OUTPUTITEMHISTORY
  add constraint PK_M4OUTPUTITEMHISTORY primary key (EXECUTETIME, HOSTNAME, OBJECTNAME, ITEMNAME);
create index IDX_ITEMHISTORY2 on M4OUTPUTITEMHISTORY (HOSTNAME, OBJECTNAME, ITEMNAME, EXECUTETIME)
  compress 3;
create index IDX_M4OUTPUTITEMHISTORY1 on M4OUTPUTITEMHISTORY (HOSTNAME, OBJECTNAME, CAST(EXECUTETIME AS timestamp));

prompt
prompt Creating table M4OUTPUTRESULT
prompt =============================
prompt
create table M4OUTPUTRESULT
(
  EXECUTETIME     DATE default SYSDATE not null,
  HOSTNAME        VARCHAR2(30 CHAR) not null,
  OBJECTNAME      VARCHAR2(30 CHAR) not null,
  ORIGINALOUTPUT  CLOB,
  EVALUTIONRESULT VARCHAR2(100 CHAR),
  RESULTCODE      NUMBER(10),
  ELAPSEDTIME     NUMBER(10),
  RECENTRESULT    NUMBER(10) default '0',
  RECENTTIME      DATE
)
;
alter table M4OUTPUTRESULT
  add constraint PK_M4OUTPUTRESULT primary key (HOSTNAME, OBJECTNAME);

prompt
prompt Creating table M4SPOBJECTAGE
prompt ============================
prompt
create table M4SPOBJECTAGE
(
  HOSTNAME   VARCHAR2(30 CHAR) not null,
  OBJECTNAME VARCHAR2(30 CHAR) not null,
  STARTTIME  VARCHAR2(10 CHAR) not null,
  ENDTIME    VARCHAR2(10 CHAR)
)
;
alter table M4SPOBJECTAGE
  add constraint PK_M4SPOBJECTAGE primary key (HOSTNAME, OBJECTNAME);

prompt
prompt Creating table M4SUSPENDOBJECT
prompt ==============================
prompt
create table M4SUSPENDOBJECT
(
  HOSTNAME    VARCHAR2(30 CHAR) not null,
  OBJECTNAME  VARCHAR2(30 CHAR) not null,
  EXECUTETIME DATE default SYSDATE not null,
  EXPECTTIME  DATE not null
)
;
alter table M4SUSPENDOBJECT
  add constraint PK_M4SUSPENDOBJECT primary key (HOSTNAME, OBJECTNAME);

prompt
prompt Creating table M4TOPLINE
prompt ========================
prompt
create table M4TOPLINE
(
  LINENAME  VARCHAR2(30 CHAR),
  STARTUUID VARCHAR2(64 CHAR) not null,
  ENDUUID   VARCHAR2(64 CHAR) not null,
  STATUS    VARCHAR2(30 CHAR),
  TOPNAME   VARCHAR2(30 CHAR) default '¡¶Ë°ÓÑÁú°æ¡·ÍØÆËÍ¼' not null
)
;
alter table M4TOPLINE
  add constraint PK_M4TOPLINE primary key (STARTUUID, ENDUUID);

prompt
prompt Creating table M4TOPNAME
prompt ========================
prompt
create table M4TOPNAME
(
  TOPNAME VARCHAR2(30 CHAR) not null,
  DFTSHOW NUMBER(10)
)
;
alter table M4TOPNAME
  add constraint PK_M4TOPNAME primary key (TOPNAME);

prompt
prompt Creating table M4TOPNODE
prompt ========================
prompt
create table M4TOPNODE
(
  TOPNAME  VARCHAR2(30 CHAR) not null,
  NODENAME VARCHAR2(30 CHAR) not null,
  NODETYPE VARCHAR2(10 CHAR) not null,
  UUID     VARCHAR2(64 CHAR) not null,
  LOCINFO  VARCHAR2(100 CHAR),
  CMNTS    VARCHAR2(100 CHAR)
)
;
alter table M4TOPNODE
  add constraint PK_M4TOPNODE primary key (TOPNAME, NODENAME);

prompt
prompt Creating table M4TOPNODEHOSTS
prompt =============================
prompt
create table M4TOPNODEHOSTS
(
  NODENAME VARCHAR2(30 CHAR) not null,
  HOSTNAME VARCHAR2(30 CHAR) not null,
  ROLEINFO VARCHAR2(30 CHAR),
  CMNTS    VARCHAR2(100 CHAR),
  TOPNAME  VARCHAR2(30 CHAR) default '¡¶Ë°ÓÑÁú°æ¡·ÍØÆËÍ¼' not null
)
;
alter table M4TOPNODEHOSTS
  add constraint PK_M4TOPNODEHOSTS primary key (TOPNAME, NODENAME, HOSTNAME);

prompt
prompt Creating table M4USERHOST
prompt =========================
prompt
create table M4USERHOST
(
  LOGINNAME    VARCHAR2(20 CHAR) not null,
  HOSTNAME     VARCHAR2(30 CHAR) not null,
  WITHUSER     VARCHAR2(30 CHAR),
  WITHPASSWORD VARCHAR2(60 CHAR),
  WITHPROMPT   VARCHAR2(30 CHAR)
)
;
alter table M4USERHOST
  add constraint PK_M4USERHOST primary key (LOGINNAME, HOSTNAME);

prompt
prompt Creating table M4USERINFO
prompt =========================
prompt
create table M4USERINFO
(
  LOGINNAME VARCHAR2(20 CHAR) not null,
  USERNAME  VARCHAR2(30 CHAR),
  EMAIL     VARCHAR2(100 CHAR),
  PASSWORD  VARCHAR2(100 CHAR),
  CREATED   DATE,
  EXPIREDAY DATE,
  LASTLOGON DATE,
  STATUS    NUMBER(10),
  USERROLE  VARCHAR2(10 CHAR)
)
;
alter table M4USERINFO
  add constraint PK_M4USERINFO primary key (LOGINNAME);

prompt
prompt Creating table M4WARNDEAL
prompt =========================
prompt
create table M4WARNDEAL
(
  EXECUTETIME DATE not null,
  HOSTNAME    VARCHAR2(30 CHAR) not null,
  OBJECTNAME  VARCHAR2(30 CHAR) not null,
  DEALER      VARCHAR2(30 CHAR) not null,
  EXPECTTIME  DATE not null,
  STATUS      NUMBER(10) default '0',
  REMOVEWARN  NUMBER(10) default '0',
  REMARKS     VARCHAR2(500 CHAR),
  DEALRESULT  VARCHAR2(500 CHAR),
  ACTUALTIME  DATE,
  SNATCHER    VARCHAR2(30 CHAR),
  SUSPENDFLAG NUMBER(10) default '0'
)
;
alter table M4WARNDEAL
  add constraint PK_M4WARNDEAL primary key (EXECUTETIME, HOSTNAME, OBJECTNAME, DEALER);

create table M4HOSTMONITORVIEW
(
  HOSTNAME      VARCHAR2(30) not null,
  CPUUSEDOBJ    VARCHAR2(30),
  CPUUSEDITEM   VARCHAR2(30),
  CPUIOWAITOBJ  VARCHAR2(30),
  CPUIOWAITITEM VARCHAR2(30),
  IOREADOBJ     VARCHAR2(30),
  IOREADITEM    VARCHAR2(30),
  IOWRITEOBJ    VARCHAR2(30),
  IOWRITEITEM   VARCHAR2(30),
  MEMUSEDOBJ    VARCHAR2(30),
  MEMUSEDITEM   VARCHAR2(30),
  STATUS        INTEGER
) ;
alter table M4HOSTMONITORVIEW
  add constraint PK_M4HOSTMONITORVIEW primary key (HOSTNAME)
  using index  ;
spool off

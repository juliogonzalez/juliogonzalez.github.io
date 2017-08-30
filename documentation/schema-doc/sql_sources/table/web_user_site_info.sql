-- created by Oraschemadoc Wed Aug 30 22:57:05 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."WEB_USER_SITE_INFO" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"WEB_USER_ID" NUMBER, 
	"EMAIL" VARCHAR2(128), 
	"EMAIL_UC" VARCHAR2(128), 
	"ALT_FIRST_NAMES" VARCHAR2(128), 
	"ALT_LAST_NAME" VARCHAR2(128), 
	"ADDRESS1" VARCHAR2(128) NOT NULL ENABLE, 
	"ADDRESS2" VARCHAR2(128), 
	"ADDRESS3" VARCHAR2(128), 
	"ADDRESS4" VARCHAR2(128), 
	"CITY" VARCHAR2(128) NOT NULL ENABLE, 
	"STATE" VARCHAR2(64), 
	"ZIP" VARCHAR2(64), 
	"COUNTRY" CHAR(2) NOT NULL ENABLE, 
	"PHONE" VARCHAR2(32), 
	"FAX" VARCHAR2(32), 
	"URL" VARCHAR2(128), 
	"IS_PO_BOX" CHAR(1) DEFAULT ('0'), 
	"TYPE" CHAR(1), 
	"ORACLE_SITE_ID" VARCHAR2(32), 
	"NOTES" VARCHAR2(2000), 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp), 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp), 
	"ALT_FIRST_NAMES_OL" VARCHAR2(128), 
	"ALT_LAST_NAME_OL" VARCHAR2(128), 
	"ADDRESS1_OL" VARCHAR2(128), 
	"ADDRESS2_OL" VARCHAR2(128), 
	"ADDRESS3_OL" VARCHAR2(128), 
	"CITY_OL" VARCHAR2(128), 
	"STATE_OL" VARCHAR2(32), 
	"ZIP_OL" VARCHAR2(32), 
	 CONSTRAINT "WUSI_IPB_CK" CHECK (is_po_box in ('1','0')) ENABLE, 
	 CONSTRAINT "WUSI_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "WUSI_WUID_FK" FOREIGN KEY ("WEB_USER_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "WUSI_TYPE_FK" FOREIGN KEY ("TYPE")
	  REFERENCES "SPACEUSER"."WEB_USER_SITE_TYPE" ("TYPE") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

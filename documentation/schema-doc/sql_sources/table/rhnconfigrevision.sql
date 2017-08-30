-- created by Oraschemadoc Wed Aug 30 22:56:37 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCONFIGREVISION" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"REVISION" NUMBER NOT NULL ENABLE, 
	"CONFIG_FILE_ID" NUMBER NOT NULL ENABLE, 
	"CONFIG_CONTENT_ID" NUMBER, 
	"CONFIG_INFO_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"CONFIG_FILE_TYPE_ID" NUMBER DEFAULT (1) NOT NULL ENABLE, 
	"CHANGED_BY_ID" NUMBER DEFAULT (null), 
	 CONSTRAINT "RHN_CONFREVISION_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_CONFREVISION_CFID_FK" FOREIGN KEY ("CONFIG_FILE_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGFILE" ("ID") ENABLE, 
	 CONSTRAINT "RHN_CONFREVISION_CCID_FK" FOREIGN KEY ("CONFIG_CONTENT_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGCONTENT" ("ID") ENABLE, 
	 CONSTRAINT "RHN_CONFREVISION_CIID_FK" FOREIGN KEY ("CONFIG_INFO_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGINFO" ("ID") ENABLE, 
	 CONSTRAINT "RHN_CONF_REV_CFTI_FK" FOREIGN KEY ("CONFIG_FILE_TYPE_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGFILETYPE" ("ID") ENABLE, 
	 CONSTRAINT "RHN_CONFREVISION_CID_FK" FOREIGN KEY ("CHANGED_BY_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

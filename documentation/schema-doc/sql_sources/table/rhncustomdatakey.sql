-- created by Oraschemadoc Wed Aug 30 22:56:38 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCUSTOMDATAKEY" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"ORG_ID" NUMBER NOT NULL ENABLE, 
	"LABEL" VARCHAR2(64) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(4000) NOT NULL ENABLE, 
	"CREATED_BY" NUMBER, 
	"LAST_MODIFIED_BY" NUMBER, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_CDATAKEY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_CDATAKEY_OID_LABEL_UQ" UNIQUE ("ORG_ID", "LABEL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_CDATAKEY_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_CDATAKEY_CB_FK" FOREIGN KEY ("CREATED_BY")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE SET NULL ENABLE, 
	 CONSTRAINT "RHN_CDATAKEY_LMB_FK" FOREIGN KEY ("LAST_MODIFIED_BY")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE SET NULL ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

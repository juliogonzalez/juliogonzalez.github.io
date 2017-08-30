-- created by Oraschemadoc Wed Aug 30 22:56:41 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNERRATATMP" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"ADVISORY" VARCHAR2(100) NOT NULL ENABLE, 
	"ADVISORY_TYPE" VARCHAR2(32) NOT NULL ENABLE, 
	"ADVISORY_NAME" VARCHAR2(100) NOT NULL ENABLE, 
	"ADVISORY_REL" NUMBER NOT NULL ENABLE, 
	"PRODUCT" VARCHAR2(64), 
	"DESCRIPTION" VARCHAR2(4000), 
	"SYNOPSIS" VARCHAR2(4000), 
	"TOPIC" VARCHAR2(4000), 
	"SOLUTION" VARCHAR2(4000), 
	"ISSUE_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"UPDATE_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"REFERS_TO" VARCHAR2(4000), 
	"NOTES" VARCHAR2(4000), 
	"ORG_ID" NUMBER, 
	"LOCALLY_MODIFIED" CHAR(1), 
	"ERRATA_FROM" VARCHAR2(127), 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"LAST_MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ERRATATMP_ADV_TYPE_CK" CHECK (advisory_type in ('Bug Fix Advisory',
				                            'Product Enhancement Advisory',
							    'Security Advisory')) ENABLE, 
	 CONSTRAINT "RHN_ERRATATMP_LM_CK" CHECK (locally_modified in ('Y','N')) ENABLE, 
	 CONSTRAINT "RHN_ERRATATMP_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_ERRATATMP_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

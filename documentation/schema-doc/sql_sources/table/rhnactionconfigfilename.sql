-- created by Oraschemadoc Wed Apr 11 12:21:53 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONCONFIGFILENAME" 
   (	"ACTION_ID" NUMBER NOT NULL ENABLE, 
	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"CONFIG_FILE_NAME_ID" NUMBER NOT NULL ENABLE, 
	"CONFIG_REVISION_ID" NUMBER, 
	"FAILURE_ID" NUMBER, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ACTIONCF_NAME_CFNID_FK" FOREIGN KEY ("CONFIG_FILE_NAME_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGFILENAME" ("ID") ENABLE, 
	 CONSTRAINT "RHN_ACTIONCF_NAME_CRID_FK" FOREIGN KEY ("CONFIG_REVISION_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGREVISION" ("ID") ON DELETE SET NULL ENABLE, 
	 CONSTRAINT "RHN_ACTIONCF_FAILURE_ID_FK" FOREIGN KEY ("FAILURE_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGFILEFAILURE" ("ID") ENABLE, 
	 CONSTRAINT "RHN_ACTIONCF_NAME_AID_SID_FK" FOREIGN KEY ("SERVER_ID", "ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNSERVERACTION" ("SERVER_ID", "ACTION_ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

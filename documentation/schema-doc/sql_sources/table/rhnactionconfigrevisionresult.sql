-- created by Oraschemadoc Wed Aug 30 22:56:31 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONCONFIGREVISIONRESULT" 
   (	"ACTION_CONFIG_REVISION_ID" NUMBER NOT NULL ENABLE, 
	"RESULT" BLOB, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ACTIONCFR_ACRID_FK" FOREIGN KEY ("ACTION_CONFIG_REVISION_ID")
	  REFERENCES "SPACEUSER"."RHNACTIONCONFIGREVISION" ("ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("RESULT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT))  ENABLE ROW MOVEMENT 
/

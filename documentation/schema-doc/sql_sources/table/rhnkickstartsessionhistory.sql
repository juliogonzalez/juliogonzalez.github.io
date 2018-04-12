-- created by Oraschemadoc Wed Apr 11 12:22:05 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNKICKSTARTSESSIONHISTORY" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"KICKSTART_SESSION_ID" NUMBER NOT NULL ENABLE, 
	"ACTION_ID" NUMBER, 
	"STATE_ID" NUMBER NOT NULL ENABLE, 
	"TIME" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MESSAGE" VARCHAR2(4000), 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_KS_SESSIONHIST_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_KS_SESSIONHIST_KSID_FK" FOREIGN KEY ("KICKSTART_SESSION_ID")
	  REFERENCES "SPACEUSER"."RHNKICKSTARTSESSION" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_KS_SESSIONHIST_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNACTION" ("ID") ON DELETE SET NULL ENABLE, 
	 CONSTRAINT "RHN_KS_SESSIONHIST_STAT_FK" FOREIGN KEY ("STATE_ID")
	  REFERENCES "SPACEUSER"."RHNKICKSTARTSESSIONSTATE" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

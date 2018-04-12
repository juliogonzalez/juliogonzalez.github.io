-- created by Oraschemadoc Wed Apr 11 12:21:53 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONCONFIGCHANNEL" 
   (	"ACTION_ID" NUMBER NOT NULL ENABLE, 
	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"CONFIG_CHANNEL_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ACTIONCC_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNACTION" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_ACTIONCC_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE, 
	 CONSTRAINT "RHN_ACTIONCC_CCID_FK" FOREIGN KEY ("CONFIG_CHANNEL_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGCHANNEL" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_ACTIONCC_SID_AID_FK" FOREIGN KEY ("SERVER_ID", "ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNSERVERACTION" ("SERVER_ID", "ACTION_ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

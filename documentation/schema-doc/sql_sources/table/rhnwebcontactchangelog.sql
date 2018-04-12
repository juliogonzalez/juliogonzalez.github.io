-- created by Oraschemadoc Wed Apr 11 12:22:21 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNWEBCONTACTCHANGELOG" 
   (	"ID" NUMBER, 
	"WEB_CONTACT_ID" NUMBER NOT NULL ENABLE, 
	"WEB_CONTACT_FROM_ID" NUMBER, 
	"CHANGE_STATE_ID" NUMBER NOT NULL ENABLE, 
	"DATE_COMPLETED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_WCON_CL_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_WCON_CL_WCON_ID_FK" FOREIGN KEY ("WEB_CONTACT_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_WCON_CL_WCON_FROM_ID_FK" FOREIGN KEY ("WEB_CONTACT_FROM_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE SET NULL ENABLE, 
	 CONSTRAINT "RHN_WCON_CL_CSID_FK" FOREIGN KEY ("CHANGE_STATE_ID")
	  REFERENCES "SPACEUSER"."RHNWEBCONTACTCHANGESTATE" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

-- created by Oraschemadoc Wed Apr 11 12:22:22 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."SUSECREDENTIALS" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"USER_ID" NUMBER NOT NULL ENABLE, 
	"TYPE_ID" NUMBER NOT NULL ENABLE, 
	"URL" VARCHAR2(256), 
	"USERNAME" VARCHAR2(64) NOT NULL ENABLE, 
	"PASSWORD" VARCHAR2(64) NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "SUSE_CREDENTIALS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "SUSE_CREDENTIALS_USER_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "SUSE_CREDENTIALS_TYPE_FK" FOREIGN KEY ("TYPE_ID")
	  REFERENCES "SPACEUSER"."SUSECREDENTIALSTYPE" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

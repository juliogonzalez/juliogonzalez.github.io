-- created by Oraschemadoc Wed Aug 30 22:56:48 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNPACKAGEKEYASSOCIATION" 
   (	"PACKAGE_ID" NUMBER NOT NULL ENABLE, 
	"KEY_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_PKEYA_PID_FK" FOREIGN KEY ("PACKAGE_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGE" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_PKEYA_KID_FK" FOREIGN KEY ("KEY_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEKEY" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
/

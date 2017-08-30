-- created by Oraschemadoc Wed Aug 30 22:57:02 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNXCCDFRULEIDENTMAP" 
   (	"RRESULT_ID" NUMBER NOT NULL ENABLE, 
	"IDENT_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "RHN_XCCDF_RIM_RRESULT_FK" FOREIGN KEY ("RRESULT_ID")
	  REFERENCES "SPACEUSER"."RHNXCCDFRULERESULT" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_XCCDF_RIM_IDENT_FK" FOREIGN KEY ("IDENT_ID")
	  REFERENCES "SPACEUSER"."RHNXCCDFIDENT" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

-- created by Oraschemadoc Wed Apr 11 12:22:05 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNKICKSTARTPRESERVEFILELIST" 
   (	"KICKSTART_ID" NUMBER NOT NULL ENABLE, 
	"FILE_LIST_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_KSPRESERVEFL_KSID_FK" FOREIGN KEY ("KICKSTART_ID")
	  REFERENCES "SPACEUSER"."RHNKSDATA" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_KSPRESERVEFL_FLID_FK" FOREIGN KEY ("FILE_LIST_ID")
	  REFERENCES "SPACEUSER"."RHNFILELIST" ("ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

-- created by Oraschemadoc Wed Aug 30 22:57:00 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNVIRTUALINSTANCEINFO" 
   (	"NAME" VARCHAR2(128), 
	"INSTANCE_ID" NUMBER NOT NULL ENABLE, 
	"INSTANCE_TYPE" NUMBER NOT NULL ENABLE, 
	"MEMORY_SIZE_K" NUMBER, 
	"VCPUS" NUMBER, 
	"STATE" NUMBER NOT NULL ENABLE, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_VII_VIID_FK" FOREIGN KEY ("INSTANCE_ID")
	  REFERENCES "SPACEUSER"."RHNVIRTUALINSTANCE" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_VII_IT_FK" FOREIGN KEY ("INSTANCE_TYPE")
	  REFERENCES "SPACEUSER"."RHNVIRTUALINSTANCETYPE" ("ID") ENABLE, 
	 CONSTRAINT "RHN_VII_STATE_FK" FOREIGN KEY ("STATE")
	  REFERENCES "SPACEUSER"."RHNVIRTUALINSTANCESTATE" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

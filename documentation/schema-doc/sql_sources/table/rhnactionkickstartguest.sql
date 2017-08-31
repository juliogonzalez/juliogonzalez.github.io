-- created by Oraschemadoc Wed Aug 30 22:56:31 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONKICKSTARTGUEST" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"ACTION_ID" NUMBER NOT NULL ENABLE, 
	"APPEND_STRING" VARCHAR2(1024), 
	"KS_SESSION_ID" NUMBER, 
	"GUEST_NAME" VARCHAR2(256), 
	"MEM_KB" NUMBER, 
	"VCPUS" NUMBER, 
	"DISK_GB" NUMBER, 
	"COBBLER_SYSTEM_NAME" VARCHAR2(256), 
	"DISK_PATH" VARCHAR2(256), 
	"VIRT_BRIDGE" VARCHAR2(256), 
	"KICKSTART_HOST" VARCHAR2(256), 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MAC_ADDRESS" VARCHAR2(17), 
	 CONSTRAINT "RHN_ACTIONKS_XENGUEST_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_ACTIONKS_XENGUEST_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNACTION" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_ACTIONKS_XENGUEST_KSID_FK" FOREIGN KEY ("KS_SESSION_ID")
	  REFERENCES "SPACEUSER"."RHNKICKSTARTSESSION" ("ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/
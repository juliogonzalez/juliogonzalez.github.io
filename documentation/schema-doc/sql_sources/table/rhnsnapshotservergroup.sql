-- created by Oraschemadoc Wed Apr 11 12:22:17 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSNAPSHOTSERVERGROUP" 
   (	"SNAPSHOT_ID" NUMBER NOT NULL ENABLE, 
	"SERVER_GROUP_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "RHN_SNAPSHOTSG_SID_FK" FOREIGN KEY ("SNAPSHOT_ID")
	  REFERENCES "SPACEUSER"."RHNSNAPSHOT" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_SNAPSHOTSG_SGID_FK" FOREIGN KEY ("SERVER_GROUP_ID")
	  REFERENCES "SPACEUSER"."RHNSERVERGROUP" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

-- created by Oraschemadoc Wed Aug 30 22:56:34 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCHANNELNEWESTPACKAGE" 
   (	"CHANNEL_ID" NUMBER NOT NULL ENABLE, 
	"NAME_ID" NUMBER NOT NULL ENABLE, 
	"EVR_ID" NUMBER NOT NULL ENABLE, 
	"PACKAGE_ARCH_ID" NUMBER NOT NULL ENABLE, 
	"PACKAGE_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "RHN_CNP_CID_NID_UQ" UNIQUE ("CHANNEL_ID", "NAME_ID", "PACKAGE_ARCH_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_CNP_CID_FK" FOREIGN KEY ("CHANNEL_ID")
	  REFERENCES "SPACEUSER"."RHNCHANNEL" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_CNP_NID_FK" FOREIGN KEY ("NAME_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGENAME" ("ID") ENABLE, 
	 CONSTRAINT "RHN_CNP_EID_FK" FOREIGN KEY ("EVR_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEEVR" ("ID") ENABLE, 
	 CONSTRAINT "RHN_CNP_PAID_FK" FOREIGN KEY ("PACKAGE_ARCH_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEARCH" ("ID") ENABLE, 
	 CONSTRAINT "RHN_CNP_PID_FK" FOREIGN KEY ("PACKAGE_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGE" ("ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

-- created by Oraschemadoc Wed Apr 11 12:22:39 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "SPACEUSER"."RHN_SAP_RESULT_SID_APID_UQ" ON "SPACEUSER"."RHNSERVERACTIONPACKAGERESULT" ("SERVER_ID", "ACTION_PACKAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
/

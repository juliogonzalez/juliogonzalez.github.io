-- created by Oraschemadoc Wed Apr 11 12:22:24 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE INDEX "SPACEUSER"."RHNSERVERGROUP_LOG_IDX" ON "SPACEUSER"."RHNSERVERGROUP_LOG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
/

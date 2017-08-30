-- created by Oraschemadoc Wed Aug 30 22:57:35 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE INDEX "SPACEUSER"."STATE_CHANGE_OID_ENTRY_IDX" ON "SPACEUSER"."STATE_CHANGE" ("O_ID", "ENTRY_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
/

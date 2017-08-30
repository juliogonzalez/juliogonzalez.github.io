-- created by Oraschemadoc Wed Aug 30 22:57:04 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."WEB_USER_CONTACT_PERMISSION" 
   (	"WEB_USER_ID" NUMBER NOT NULL ENABLE, 
	"EMAIL" CHAR(1) DEFAULT ('N'), 
	"MAIL" CHAR(1) DEFAULT ('N'), 
	"CALL" CHAR(1) DEFAULT ('N'), 
	"FAX" CHAR(1) DEFAULT ('N'), 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "WUCP_EMAIL_CK" CHECK (email in ('Y','N')) ENABLE, 
	 CONSTRAINT "WUCP_MAIL_CK" CHECK (mail in ('Y','N')) ENABLE, 
	 CONSTRAINT "WUCP_CALL_CK" CHECK (call in ('Y','N')) ENABLE, 
	 CONSTRAINT "WUCP_FAX_CK" CHECK (fax in ('Y','N')) ENABLE, 
	 CONSTRAINT "CONTPERM_WBUSERID_FK" FOREIGN KEY ("WEB_USER_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

-- created by Oraschemadoc Wed Apr 11 12:21:59 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCONTENTSOURCESSL" 
   (	"CONTENT_SOURCE_ID" NUMBER NOT NULL ENABLE, 
	"SSL_CA_CERT_ID" NUMBER NOT NULL ENABLE, 
	"SSL_CLIENT_CERT_ID" NUMBER, 
	"SSL_CLIENT_KEY_ID" NUMBER, 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_CSSSL_CLIENT_CHK" CHECK (ssl_client_key_id is null or ssl_client_cert_id is not null) ENABLE, 
	 CONSTRAINT "RHN_CSSSL_CSID_FK" FOREIGN KEY ("CONTENT_SOURCE_ID")
	  REFERENCES "SPACEUSER"."RHNCONTENTSOURCE" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_CSSSL_CACERTID_FK" FOREIGN KEY ("SSL_CA_CERT_ID")
	  REFERENCES "SPACEUSER"."RHNCRYPTOKEY" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_CSSSL_CLCERTID_FK" FOREIGN KEY ("SSL_CLIENT_CERT_ID")
	  REFERENCES "SPACEUSER"."RHNCRYPTOKEY" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_CSSSL_CLKEYID_FK" FOREIGN KEY ("SSL_CLIENT_KEY_ID")
	  REFERENCES "SPACEUSER"."RHNCRYPTOKEY" ("ID") ON DELETE CASCADE ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE ROW MOVEMENT 
/

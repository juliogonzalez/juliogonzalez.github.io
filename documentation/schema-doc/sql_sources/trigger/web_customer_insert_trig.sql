-- created by Oraschemadoc Wed Apr 11 12:22:56 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."WEB_CUSTOMER_INSERT_TRIG" 
after insert on web_customer
for each row
begin
    insert into rhnOrgConfiguration (org_id) values (:new.id);
    insert into rhnOrgAdminManagement (org_id) values (:new.id);
end;
ALTER TRIGGER "SPACEUSER"."WEB_CUSTOMER_INSERT_TRIG" ENABLE
/

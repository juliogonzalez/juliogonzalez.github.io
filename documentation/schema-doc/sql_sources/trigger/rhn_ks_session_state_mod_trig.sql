-- created by Oraschemadoc Wed Apr 11 12:22:55 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_KS_SESSION_STATE_MOD_TRIG" 
before insert or update on rhnKickstartSessionState
for each row
begin
	:new.modified := current_timestamp;
end;
ALTER TRIGGER "SPACEUSER"."RHN_KS_SESSION_STATE_MOD_TRIG" ENABLE
/

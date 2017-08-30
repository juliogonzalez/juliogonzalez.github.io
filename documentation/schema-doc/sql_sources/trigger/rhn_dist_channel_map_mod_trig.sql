-- created by Oraschemadoc Wed Aug 30 22:57:45 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_DIST_CHANNEL_MAP_MOD_TRIG" 
before insert or update on rhnDistChannelMap
for each row
begin
    if :new.id is null then
        select rhn_dcm_id_seq.nextval into :new.id from dual;
    end if;
end;
ALTER TRIGGER "SPACEUSER"."RHN_DIST_CHANNEL_MAP_MOD_TRIG" ENABLE
/

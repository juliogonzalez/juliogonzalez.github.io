-- created by Oraschemadoc Wed Apr 11 12:22:56 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_SERVER_GROUP_ORG_MAPPING" 
BEFORE INSERT OR UPDATE ON rhnServerGroupMembers
FOR EACH ROW
DECLARE
        same_org        NUMBER;
BEGIN
        same_org := 0;
        SELECT 1 INTO same_org
          FROM rhnServer S, rhnServerGroup SG
         WHERE SG.org_id = S.org_id
           AND S.id = :new.server_id
           AND SG.id = :new.server_group_id;
        IF same_org = 0 THEN
          rhn_exception.raise_exception('sgm_insert_diff_orgs');
        END IF;
EXCEPTION
        WHEN NO_DATA_FOUND THEN
          rhn_exception.raise_exception('sgm_insert_diff_orgs');
END;
ALTER TRIGGER "SPACEUSER"."RHN_SERVER_GROUP_ORG_MAPPING" ENABLE
/

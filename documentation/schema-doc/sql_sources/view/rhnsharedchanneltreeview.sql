-- created by Oraschemadoc Wed Apr 11 12:22:51 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSHAREDCHANNELTREEVIEW" ("ORG_ID", "ID", "DEPTH", "NAME", "PADDED_NAME", "CHANNEL_ARCH_ID", "LAST_MODIFIED", "LABEL", "PARENT_OR_SELF_LABEL", "PARENT_OR_SELF_ID", "END_OF_LIFE") AS 
  SELECT "ORG_ID","ID","DEPTH","NAME","PADDED_NAME","CHANNEL_ARCH_ID","LAST_MODIFIED","LABEL","PARENT_OR_SELF_LABEL","PARENT_OR_SELF_ID","END_OF_LIFE" FROM (
  SELECT
    C.ORG_TRUST_ID AS ORG_ID,
    C.ID,
    1 AS DEPTH,
    C.NAME,
    '  '||C.NAME AS PADDED_NAME,
    C.CHANNEL_ARCH_ID,
    C.LAST_MODIFIED,
    C.LABEL,
    C.LABEL AS PARENT_OR_SELF_LABEL,
    C.ID AS PARENT_OR_SELF_ID,
    C.END_OF_LIFE
  FROM RHNSHAREDCHANNELVIEW C
  WHERE C.PARENT_CHANNEL IS NULL
  UNION
  SELECT
    C.ORG_TRUST_ID AS ORG_ID,
    C.ID,
    2 AS DEPTH,
    c.name,
    ''||C.NAME AS PADDED_NAME,
    C.CHANNEL_ARCH_ID,
    C.LAST_MODIFIED,
    C.LABEL,
    PC.LABEL AS PARENT_OR_SELF_LABEL,
    PC.ID AS PARENT_OR_SELF_ID,
    C.END_OF_LIFE
  FROM RHNCHANNEL PC,
       RHNSHAREDCHANNELVIEW C
  WHERE C.PARENT_CHANNEL = PC.ID
) SHARRED
ORDER BY PARENT_OR_SELF_LABEL, PARENT_OR_SELF_ID
/

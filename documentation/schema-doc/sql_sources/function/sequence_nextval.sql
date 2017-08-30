-- created by Oraschemadoc Wed Aug 30 22:57:50 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."SEQUENCE_NEXTVAL" ( seq_name varchar2 ) return number as
	ret number;
begin
	execute immediate 'select '|| seq_name || '.nextval from dual'
		into ret;
	return ret;
end;
/

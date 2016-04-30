create or replace FUNCTION DATE_TO_HEURES 
(
  DATE_DEB IN DATE 
, DATE_FIN IN DATE 
) RETURN NUMBER AS 
BEGIN
  RETURN ((DATE_FIN - DATE_DEB)*8);
END DATE_TO_HEURES;
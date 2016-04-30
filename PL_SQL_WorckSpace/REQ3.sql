set serveroutput on
DECLARE
V_DEB DATE;
V_FIN DATE;
BEGIN
V_DEB := TO_DATE('01/04/2015', 'dd/mm/yyyy');
V_FIN := TO_DATE('02/04/2015', 'dd/mm/yyyy');
RENDEMENT_EMPLOYER(3,V_DEB,V_FIN);

END;
/
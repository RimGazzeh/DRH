set serveroutput on
DECLARE
CURSOR C_PROJ IS
SELECT * FROM PROJET;

BEGIN
DBMS_OUTPUT.PUT_LINE('---------La liste des projets dépassant 50% des travaux------------');
DBMS_OUTPUT.PUT_LINE('');
FOR PROJ IN C_PROJ LOOP
  IF(PROJ.AVANCEMENT > 50)THEN
    AFFICHE_PROJET  (PROJ);
  END IF;
END LOOP;
END;
/
    

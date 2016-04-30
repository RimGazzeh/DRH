set serveroutput on
DECLARE
CURSOR C_PROJ IS
  SELECT * FROM PROJET;

NB_HEURES INTEGER;

BEGIN
DBMS_OUTPUT.PUT_LINE('------La charge horaire globale réalisée dans les travaux pour chaque projet-------');
DBMS_OUTPUT.PUT_LINE(' ');
  for V_PROJ in C_PROJ loop
    NB_HEURES:=CHARGE_PROJET (V_PROJ.CODE_PROJET);
    DBMS_OUTPUT.put_line(' CODE PROJET:: '||V_PROJ.CODE_PROJET||'  NOM PROJET::'||V_PROJ.NOM_PROJET||'  CHEF PROJET:: '||V_PROJ.CHEF_PROJET);
    DBMS_OUTPUT.put_line('--->NB HEURES INTERVENTION: ' ||NB_HEURES);
    DBMS_OUTPUT.put_line('--------------------------------------');
  end loop;

END;
/
set serveroutput on
DECLARE
CURSOR C_SERV IS
  SELECT * FROM SERVICE;

NB_HEURES INTEGER;
BEGIN
DBMS_OUTPUT.PUT_LINE('------Le nombre d’heures d’interventions de chaque service pour chaque projet-------');
DBMS_OUTPUT.PUT_LINE(' ');
  for V_SERV in C_SERV loop
    NB_HEURES:=INT_SERVICE(V_SERV.NUM_SERV);
    AFFICHE_SERVICE(V_SERV);
    DBMS_OUTPUT.put_line('--->NB HEURES INTERVENTION: ' ||NB_HEURES);
     DBMS_OUTPUT.put_line('--------------------------------------');
  end loop;
  
END;
/

